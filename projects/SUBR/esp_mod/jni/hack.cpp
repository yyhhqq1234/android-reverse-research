// SUBR ESP / Aimbot / Silent-Aim mod  —  libSUBRESP.so (arm64)
// Unity 2020.3.42f1, IL2CPP metadata v27.
//
// DESIGN (v3, translator-safe):
//  * ZERO il2cpp class/method lookups. The earlier SIGSEGV (libil2cpp+0x6d1d14,
//    "ldr x0,[x24,#0x30]" with x0=0) was il2cpp_class_from_name() receiving a NULL
//    Il2CppImage from a guessed struct layout. All engine access now goes through
//    il2cpp_resolve_icall(), which needs no image/class/method introspection.
//  * Entity collection by INLINE-HOOKING the game's own per-frame Update methods
//    (no FindObjectsOfType, no Type objects, no boxing).
//  * All il2cpp/icall work runs on the MAIN thread (inside the hooked Update).
//  * Drawing runs on the RENDER thread (eglSwapBuffers hook) and only replays a
//    cached line list — no il2cpp calls there.
//
// Verified offsets (Il2CppDumper script.json, file-offset == dump Offset):
//   PlayerHealthManager::Update      0x1AA51D0
//   GameController::Update           0xCD6544
//   ZombieEnemyAI::Update            0xB367A0
//   EnemyAIBoss::Update              0xCE9A84
//   MonsterEnemy::Update             0x9BA7E8
//   AIController::Update             0x16AD950
//   PickableItem::Update             0x1A9F098
//   ShootBehaviour::ShootByScript    0xD39EEC
// Verified field offsets (dump.cs):
//   PlayerHealthManager.Health  float  @0x18     PlayerHealthManager.playerAnim Animator @0x98
//   PickableItem.used           bool   @0x98
#include <jni.h>
#include <dlfcn.h>
#include <link.h>
#include <pthread.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <android/log.h>
#include <signal.h>
#include <setjmp.h>
// Last-resort SEGV guard: raw pointer validation can itself touch an
// unmapped page. Catch the fault, skip the tick, keep the game alive.
static sigjmp_buf g_jb; static volatile sig_atomic_t g_armed = 0;
static volatile unsigned g_segv = 0;
static void sev_handler(int, siginfo_t*, void*) {
    if (g_armed) siglongjmp(g_jb, 1);
}
#include <EGL/egl.h>
#include <GLES2/gl2.h>

#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, "SUBRESP", __VA_ARGS__)
#define TAG_OK "SUBRESP"

// ---------------- structs (engine ABI) ----------------
typedef struct { float x, y, z; } Vec3;
typedef struct { float x, y, z, w; } Quat;
typedef struct Il2CppObject { void* klass; void* monitor; } Il2CppObject;
typedef struct Il2CppArray { Il2CppObject obj; void* bounds; size_t max_length; void* vector[0]; } Il2CppArray;
typedef void MethodInfo;

// ---------------- toggles ----------------
// R2 fix: volatile (menu UI thread writes, game/render threads read without lock)
// R20: menu-controlled again (operator confirmed the ESP category exists — just scroll down in the menu)
static volatile bool g_espBox = false, g_skeleton = false, g_itemEsp = false;
static volatile bool g_aimbot = false, g_silent = false;
static volatile int  g_aimFovPx = 180;
static volatile int  g_aimSmooth = 6;
static volatile int  g_aimPitchTrim = 0;
static volatile int  g_noAds = 1;          // R32: no-ads master switch (menu 110)   // R28: 0.1 deg units; negative = aim lower (crosshair was landing above the head)
static volatile int  g_maxDist  = 300;   // metres
static volatile int  g_diag     = 1;     // R14: run compute in-match even with all toggles off (evidence)
static volatile int  g_diag_only = 0;    // set by driver(): suppress publishing so nothing renders
static volatile int  g_diag_force = 0;   // release: drawing follows the menu toggles

// ---------------- il2cpp exports ----------------
static void* (*p_resolve_icall)(const char*) = NULL;
// extra runtime exports for class/type enumeration (all standard il2cpp API)
static void*       (*p_class_get_image)(void*) = NULL;
static void*       (*p_class_get_type)(void*) = NULL;
static Il2CppObject* (*p_type_get_object)(void*) = NULL;
static void*       (*p_class_from_name)(void*, const char*, const char*) = NULL;
static int           (*p_img_class_count)(void*) = NULL;
static void*         (*p_img_get_class)(void*, int) = NULL;
static const char*   (*p_class_get_name)(void*) = NULL;
static Il2CppObject* (*p_string_new)(const char*) = NULL;   // R32: il2cpp_string_new
static void* (*p_class_get_method_from_name)(void*, const char*, int) = NULL;
static Il2CppObject* (*p_runtime_invoke)(const MethodInfo*, void*, void**, void**) = NULL;
static void* (*p_domain_get)(void) = NULL;
static void* (*p_thread_attach)(void*) = NULL;
static uint32_t (*p_gchandle_new)(Il2CppObject*, bool) = NULL;
static void (*p_gchandle_free)(uint32_t) = NULL;
static Il2CppObject* (*p_gchandle_target)(uint32_t) = NULL;

// ---------------- resolved icalls ----------------
typedef Il2CppObject* (*fn_get_main)(const MethodInfo*);
typedef Il2CppObject* (*fn_get_transform)(void*, const MethodInfo*);
typedef Vec3          (*fn_get_position)(void*, const MethodInfo*);
typedef void          (*fn_set_rotation)(void*, Quat, const MethodInfo*);
typedef Quat          (*fn_look_rotation)(Vec3, Vec3, const MethodInfo*);
// NOTE: Camera.WorldToScreenPoint in this build takes THREE args:
//   Vector3 WorldToScreenPoint(Camera* __this, Vector3 position, int32_t eye, const MethodInfo*)
// (the 2-arg prototype dropped the stereoscopic ye argument -> ABI-wrong call -> garbage
//  results -> every depth test failed -> ESP never drew).
typedef Vec3          (*fn_w2s)(void*, Vec3, int, const MethodInfo*);
typedef int           (*fn_int0)(const MethodInfo*);
typedef Il2CppObject* (*fn_get_bone)(void*, int, const MethodInfo*);
typedef Quat          (*fn_get_rotation)(void*, const MethodInfo*);
typedef bool            (*fn_ray)(Vec3, Vec3, void*, float, const MethodInfo*);
typedef float           (*fn_fov)(void*, const MethodInfo*);
typedef bool            (*fn_ortho)(void*, const MethodInfo*);
typedef float           (*fn_depth)(void*, const MethodInfo*);
typedef bool            (*fn_enabled)(void*, const MethodInfo*);
typedef Il2CppObject* (*fn_get_go)(void*, const MethodInfo*);
typedef Vec3          (*fn_get_fwd)(void*, const MethodInfo*);

static fn_get_main       ic_cam_main   = NULL;
static fn_get_main       ic_cam_cur    = NULL;   // Camera.get_current
static fn_get_transform  ic_get_xform  = NULL;
static fn_get_position   ic_get_pos    = NULL;
static fn_set_rotation   ic_set_rot    = NULL;
static fn_look_rotation  ic_look_rot   = NULL;
static fn_w2s            ic_w2s        = NULL;
static fn_int0           ic_scr_w      = NULL;
static fn_int0           ic_scr_h      = NULL;
static fn_get_bone       ic_get_bone   = NULL;
static fn_get_rotation   ic_get_rot    = NULL;
static fn_ray            ic_ray        = NULL;   // Physics.Raycast(o,d,hit,maxD)
static fn_fov            ic_cam_fov    = NULL;   // Camera.get_fieldOfView
static fn_ortho          ic_cam_ortho  = NULL;   // Camera.get_orthographic (UI=true)
static fn_depth          ic_cam_depth  = NULL;   // Camera.get_depth (UI overlays use high depth)
static fn_enabled        ic_beh_en     = NULL;   // Behaviour.get_enabled (Camera extends Behaviour)
static fn_get_go         ic_get_go     = NULL;   // Component.get_gameObject (collider identity for LOS)
static fn_get_fwd        ic_get_fwd    = NULL;   // Transform.get_forward (pitch proxy for diagnostics)
static Il2CppObject     *g_tyOrbit    = NULL;
static uint32_t          g_orbitH      = 0;
static volatile bool g_icalls_ready = false;

static void* il2cpp_off2addr(uintptr_t file_off);   // fwd (defined below)

// Engine functions are taken from Il2CppDumper script.json Offsets and called
// directly with the exact dump.cs ABI (last arg = const MethodInfo*, NULL is fine
// for these simple engine accessors). il2cpp_resolve_icall only covers the
// *_Injected internals, so name-based lookup returns NULL for the managed
// wrappers — direct addresses are the reliable path here.
static void* g_scan_image = NULL;          // Assembly-CSharp image (from a live game object)
static void* g_core_image = NULL;           // UnityEngine.CoreModule image (from a live Camera)
static const MethodInfo* p_find_of_type = NULL;
static const MethodInfo* p_find_of_type2 = NULL;  // (Type,bool) includeInactive overload
static Il2CppObject* invoke(const MethodInfo* m, void* obj, void** args) {
    if (!m || !p_runtime_invoke) return NULL;
    void* exc = NULL;
    Il2CppObject* r = p_runtime_invoke(m, obj, args, &exc);
    if (exc) return NULL;
    return r;
}

static const MethodInfo* find_of_type_method(void* engineObj) {
    static const MethodInfo* (*getm)(void*, const char*, int) = NULL;
    static void* lib = NULL;
    if (!lib) lib = dlopen("libil2cpp.so", RTLD_NOW);
    if (!getm && lib) getm = (decltype(getm))dlsym(lib, "il2cpp_class_get_method_from_name");
    // core image straight off the live Camera object's klass
    if (!g_core_image && engineObj && p_class_get_image) {
        void* klass = *(void**)engineObj;
        g_core_image = p_class_get_image(klass);
        LOGI("core image=%p", g_core_image);
    }
    if (!p_find_of_type && g_core_image && p_class_from_name && getm) {
        void* objK = p_class_from_name(g_core_image, "UnityEngine", "Object");
        if (objK) {
            p_find_of_type = getm(objK, "FindObjectsOfType", 1);
            // 2-arg (Type, bool includeInactive): catches dormant bots Unity culls from the 1-arg list
            p_find_of_type2 = getm(objK, "FindObjectsOfType", 2);
        }
        LOGI("FindObjectsOfType=%p +inclInactive=%p (Object klass %p)", (void*)p_find_of_type, (void*)p_find_of_type2, objK);
    }
    return p_find_of_type;
}

static void resolve_engine() {
    ic_cam_main  = (fn_get_main)      il2cpp_off2addr(0x0CB47EC); // Camera.get_main
    ic_cam_cur   = (fn_get_main)      il2cpp_off2addr(0x0CB4820); // Camera.get_current
    ic_get_xform = (fn_get_transform) il2cpp_off2addr(0x0CB7BC4); // Component.get_transform
    ic_get_pos   = (fn_get_position)  il2cpp_off2addr(0x1762E68); // Transform.get_position
    ic_set_rot   = (fn_set_rotation)  il2cpp_off2addr(0x17631CC); // Transform.set_rotation
    ic_get_rot   = (fn_get_rotation)  il2cpp_off2addr(0x1763148); // Transform.get_rotation
    ic_look_rot  = (fn_look_rotation) il2cpp_off2addr(0x0C3F830); // Quaternion.LookRotation
    ic_w2s       = (fn_w2s)           il2cpp_off2addr(0x0CB3FAC); // Camera.WorldToScreenPoint
    ic_scr_w     = (fn_int0)          il2cpp_off2addr(0x0C4A4EC); // Screen.get_width
    ic_scr_h     = (fn_int0)          il2cpp_off2addr(0x0C4A520); // Screen.get_height
    ic_get_bone  = (fn_get_bone)      il2cpp_off2addr(0x1A4979C); // Animator.GetBoneTransform
    ic_ray       = (fn_ray)           il2cpp_off2addr(0x1A51B5C); // Physics.Raycast(o,d,hit,maxD)
    ic_cam_fov   = (fn_fov)           il2cpp_off2addr(0x0CB2F74); // Camera.get_fieldOfView
    ic_cam_ortho = (fn_ortho)         il2cpp_off2addr(0x0CB31F4); // Camera.get_orthographic
    ic_cam_depth = (fn_depth)         il2cpp_off2addr(0x0CB3284); // Camera.get_depth
    ic_beh_en    = (fn_enabled)       il2cpp_off2addr(0x0CB1BE8); // Behaviour.get_enabled
    ic_get_go    = (fn_get_go)        il2cpp_off2addr(0x0CB7C04); // Component.get_gameObject
    ic_get_fwd   = (fn_get_fwd)       il2cpp_off2addr(0x1763480); // Transform.get_forward
    g_icalls_ready = ic_cam_main && ic_get_xform && ic_get_pos && ic_w2s;
    LOGI("engine fn: main=%p xform=%p pos=%p w2s=%p rot=%p/%p look=%p scr=%p/%p bone=%p ready=%d",
         (void*)ic_cam_main, (void*)ic_get_xform, (void*)ic_get_pos, (void*)ic_w2s,
         (void*)ic_get_rot, (void*)ic_set_rot, (void*)ic_look_rot,
         (void*)ic_scr_w, (void*)ic_scr_h, (void*)ic_get_bone, (int)g_icalls_ready);
}

static inline bool sane(Vec3 v) {
    if (!(v.x == v.x) || !(v.y == v.y) || !(v.z == v.z)) return false; // NaN
    float m = fabsf(v.x) + fabsf(v.y) + fabsf(v.z);
    return m > 0.0001f && m < 1.0e7f;
}

// ---------------- entity registry (filled by Update hooks) ----------------
enum { K_PLAYER = 0, K_HOSTILE = 1, K_ITEM = 2 };
struct Reg { void* obj; int kind; unsigned stamp; };
static Reg g_reg[640];
static int g_regN = 0;
static unsigned g_frame = 0;
static pthread_mutex_t g_regLock = PTHREAD_MUTEX_INITIALIZER;

static void reg_touch(void* o, int kind) {
    if (!o || ((uintptr_t)o & 7)) return;
    if (pthread_mutex_trylock(&g_regLock) != 0) return;   // busy: drop, scan covers
    for (int i = 0; i < g_regN; i++) {
        if (g_reg[i].obj == o) { g_reg[i].stamp = g_frame; g_reg[i].kind = kind; pthread_mutex_unlock(&g_regLock); return; }
    }
    if (g_regN < 640) { g_reg[g_regN].obj = o; g_reg[g_regN].kind = kind; g_reg[g_regN].stamp = g_frame; g_regN++; }
    pthread_mutex_unlock(&g_regLock);
}
static void reg_expire() {
    if (pthread_mutex_trylock(&g_regLock) != 0) return;
    int w = 0;
    for (int i = 0; i < g_regN; i++)
        if (g_frame - g_reg[i].stamp <= 90) g_reg[w++] = g_reg[i]; // R5 fix: 3 s window (was 2 frames/66 ms killing Start regs)
    g_regN = w;
    pthread_mutex_unlock(&g_regLock);
}

// ---------------- draw list (produced main thread, replayed render thread) ----------------
struct DrawCmd { float pts[16]; float col[3]; int n; };
static DrawCmd g_draw[400];
static int g_drawCount = 0;
static pthread_mutex_t g_drawLock = PTHREAD_MUTEX_INITIALIZER;

static void push_seg(float x1, float y1, float x2, float y2, const float* c) {
    if (g_drawCount >= 400) return;
    DrawCmd& d = g_draw[g_drawCount++];
    d.pts[0] = x1; d.pts[1] = y1; d.pts[2] = x2; d.pts[3] = y2;
    d.col[0] = c[0]; d.col[1] = c[1]; d.col[2] = c[2]; d.n = 2;
}
static void push_box(float x, float y, float w, float h, const float* c) {
    if (g_drawCount >= 400) return;
    DrawCmd& d = g_draw[g_drawCount++];
    float p[16] = {x,y, x+w,y, x+w,y, x+w,y+h, x+w,y+h, x,y+h, x,y+h, x,y};
    memcpy(d.pts, p, sizeof(p));
    d.col[0] = c[0]; d.col[1] = c[1]; d.col[2] = c[2]; d.n = 16;
}

// ---------------- aim state (main thread only) ----------------
static Vec3  g_aimPoint{0,0,0};
static bool  g_aimValid = false;
// R15: ballistics origin = local player's weapon muzzle (LOS / can-hit must start at the gun, not the pivot)
static Vec3  g_muzzlePos{0,0,0};
static bool  g_muzzleOk = false;
static int   g_aimBone = 0;   // R23: 1 = head bone, 2 = chest bone
static volatile float g_lastPivotY = 0.f, g_lastCamY = 0.f;   // R25: diagnostics for the camera-vs-pivot bias
static volatile float g_lastVMin = 0.f, g_lastVMax = 0.f;      // R29: raw vertical limits read from the rig
static volatile int   g_lastVDegLike = 0;
static volatile float g_lastAngleV = 0.f, g_lastAngleH = 0.f;
// R26: last camera pose + orbit rig, for the silent-aim camera snap at fire time
static volatile float g_camX = 0.f, g_camY = 0.f, g_camZ = 0.f;
static void*          g_orbPtr = NULL;
static void*          g_orbCamTr = NULL;   // R31: ThirdPersonOrbitCam.cam (Transform) for direct rotation writes

// screen size published by the main thread for the render-thread replay
static int g_sw = 0, g_sh = 0;
// telemetry counters (defined later, declared here for the 5 s log line)
static int g_drawn = 0;
static volatile unsigned g_swap_calls = 0;
static volatile int g_ent_last = 0, g_w2s_ok = 0;   // last compute: entities used / W2S successes
static volatile int g_cZ = 0, g_cScr = 0;
static int g_losProbes = 0;   // R21: per-frame ray budget (3-state reachability)
// R23: temporal hysteresis — a change must repeat 3 frames before it is shown
struct LosMem { void* obj; int state; int cnt; };
static LosMem g_losMem[64];
static int los_stable(void* obj, int raw) {
    if (!obj) return raw;
    int slot = -1, freeSlot = -1;
    for (int i = 0; i < 64; i++) {
        if (g_losMem[i].obj == obj) { slot = i; break; }
        if (freeSlot < 0 && g_losMem[i].obj == NULL) freeSlot = i;
    }
    if (slot < 0) {
        slot = (freeSlot >= 0) ? freeSlot : (int)((uintptr_t)obj % 64);
        g_losMem[slot].obj = obj; g_losMem[slot].state = raw; g_losMem[slot].cnt = 0;
        return raw;
    }
    if (g_losMem[slot].state == raw) { g_losMem[slot].cnt = 0; return raw; }
    g_losMem[slot].cnt++;
    if (g_losMem[slot].cnt >= 3) { g_losMem[slot].state = raw; g_losMem[slot].cnt = 0; }
    return g_losMem[slot].state;
} // cull counters: behind-camera / off-screen+hh (look-up-only diagnosis)
static volatile unsigned g_compute_calls = 0;       // compute entry counter (freeze自证)
static volatile int g_compute_rc = -1;              // last compute return code
static volatile unsigned g_contend = 0;            // cross-thread overlap skips
static volatile int g_phase = 0;                   // compute progress marker (hang自证)
static void ensure_shoot_hook(void);
static long long now_ms() {
    struct timespec ts; clock_gettime(CLOCK_MONOTONIC, &ts);
    return (long long)ts.tv_sec * 1000 + ts.tv_nsec / 1000000;
}

// ---------------- hooks ----------------
typedef void (*upd_t)(void*, const MethodInfo*);
static upd_t orig_gc = NULL, orig_phm_start = NULL, orig_zen = NULL, orig_boss = NULL,
             orig_mon = NULL, orig_item = NULL, orig_menu = NULL, orig_ai = NULL;

static inline void* read_ptr(void* o, size_t off) {
    void* v = NULL; memcpy(&v, (char*)o + off, sizeof(v)); return v;
}
// UnityEngine.Object aliveness WITHOUT calling into the engine (plain loads only:
// engine calls on a Destroyed shell THROW through our frames and can wedge/crash).
// layout: Il2CppObject { klass(8), monitor(8) } + m_CachedPtr(8) @0x10; 0 = destroyed.
static inline bool alive(void* o) {
    if (!o || ((uintptr_t)o & 7)) return false;
    void* klass = NULL; memcpy(&klass, o, sizeof(klass));
    if (!klass || ((uintptr_t)klass & 7)) return false;
    if ((uintptr_t)klass < 0x10000) return false;
    void* cp = NULL; memcpy(&cp, (char*)o + 0x10, sizeof(cp));
    return cp != NULL;
}

// main-thread per-frame logic
// ---------------- instance enumeration (FindObjectsOfType) ----------------
// Type objects for the classes we draw; built once from the image of a live object.
static Il2CppObject *g_tyPHM = NULL, *g_tyZombie = NULL, *g_tyBoss = NULL,
                    *g_tyMonster = NULL, *g_tyItem = NULL, *g_tyAI = NULL;
static int g_scan_ready = 0;

static Il2CppObject* type_of(const char* name) {
    if (!p_class_from_name || !p_class_get_type || !p_type_get_object || !g_scan_image) return NULL;
    void* k = p_class_from_name(g_scan_image, "", name);
    if (!k) return NULL;
    return p_type_get_object(p_class_get_type(k));
}

static void scan_init(void* anyObj) {
    if (g_scan_ready || !anyObj) return;
    if (!p_class_get_image || !p_find_of_type) return;
    void* klass = *(void**)anyObj;                      // Il2CppObject header = klass
    g_scan_image = p_class_get_image(klass);
    if (!g_scan_image) return;
    g_tyPHM     = type_of("PlayerHealthManager");
    g_tyZombie  = type_of("ZombieEnemyAI");
    g_tyBoss    = type_of("EnemyAIBoss");
    g_tyMonster = type_of("MonsterEnemy");
    g_tyItem    = type_of("PickableItem");
    g_tyAI      = type_of("AIController");
    g_tyOrbit   = type_of("ThirdPersonOrbitCam");
    g_scan_ready = 1;
    LOGI("scan: image=%p PHM=%p zombie=%p boss=%p monster=%p item=%p ai=%p orbit=%p",
         g_scan_image, (void*)g_tyPHM, (void*)g_tyZombie, (void*)g_tyBoss,
         (void*)g_tyMonster, (void*)g_tyItem, (void*)g_tyAI, (void*)g_tyOrbit);
}

// enumerated instances + kinds (produced on the main thread, consumed by compute)
// objects are pinned with a GC handle so a killed/looted entity can't become a wild pointer
struct ScanEnt { uint32_t h; int kind; int hpk; };
static ScanEnt g_scan[512];
static int g_scanN = 0;

static void scan_clear() {
    if (p_gchandle_free) {
        for (int i = 0; i < g_scanN; i++) if (g_scan[i].h) p_gchandle_free(g_scan[i].h);
    }
    g_scanN = 0;
}

static int scan_collect(Il2CppObject* type, int kind, int budget, int hpk = 0) {
    if (!type || budget <= 0) return 0;
    Il2CppArray* a = NULL;
    if (p_find_of_type2) {
        // (Type, bool includeInactive=true): bool is 1 byte in IL2CPP arrays of args
        static bool kTrue = true;
        void* args2[2]; args2[0] = type; args2[1] = &kTrue;
        a = (Il2CppArray*)invoke(p_find_of_type2, NULL, args2);
    }
    if (!a && p_find_of_type) {
        void* args[1]; args[0] = type;
        a = (Il2CppArray*)invoke(p_find_of_type, NULL, args);
    }
    if (!a) return 0;
    size_t n = a->max_length;
    if (n > (size_t)budget) n = (size_t)budget;
    int added = 0;
    for (size_t i = 0; i < n; i++) {
        void* o = a->vector[i];
        if (!o || g_scanN >= 512) continue;
        uint32_t h = 0;
        if (p_gchandle_new) h = p_gchandle_new((Il2CppObject*)o, false);
        if (!h) continue;   // pin failed: skip instead of storing a wild pointer
        g_scan[g_scanN].h = h;
        g_scan[g_scanN].kind = kind;
        g_scan[g_scanN].hpk = hpk;
        g_scanN++; added++;
    }
    return added;
}

static const MethodInfo* p_find_type_from_scan = NULL;   // (unused placeholder)

static void* orbit_pinned() {
    if (!g_orbitH || !p_gchandle_target) return NULL;
    void* o = p_gchandle_target(g_orbitH);
    return (o && alive(o)) ? o : NULL;
}
static void scan_run() {
    if (!g_scan_ready) return;
    scan_clear();
    scan_collect(g_tyAI,      K_HOSTILE, 128, 2);
    scan_collect(g_tyZombie,  K_HOSTILE, 128, 3);
    scan_collect(g_tyBoss,    K_HOSTILE, 16, 5);
    scan_collect(g_tyMonster, K_HOSTILE, 32, 4);
    scan_collect(g_tyItem,    K_ITEM,    160, 0);
    scan_collect(g_tyPHM,     K_PLAYER,  32, 1);
    if (g_tyOrbit) {   // orbit rig singleton -> aim pivot + vis origin
        if (g_orbitH && p_gchandle_free) { p_gchandle_free(g_orbitH); g_orbitH = 0; }
        Il2CppArray* a = NULL;
        if (p_find_of_type2) {
            static bool kTrue = true;
            void* a2[2]; a2[0] = g_tyOrbit; a2[1] = &kTrue;
            a = (Il2CppArray*)invoke(p_find_of_type2, NULL, a2);
        }
        if (!a && p_find_of_type) {
            void* a1[1]; a1[0] = g_tyOrbit;
            a = (Il2CppArray*)invoke(p_find_of_type, NULL, a1);
        }
        if (a && a->max_length > 0 && a->vector[0] && p_gchandle_new)
            g_orbitH = p_gchandle_new((Il2CppObject*)a->vector[0], false);
    }
}

// NOTE: bone Transforms are resolved FRESH every frame (never cached): a cached
// Transform of a killed bot is an unmapped wild pointer and even alive() cannot
// touch it safely. Fresh resolve may THROW on destroyed avatars -> caught below.
// orbit pivot (player pos + pivotOffset); falls back to camera pos.
static bool orbit_pivot(Vec3* out, void** orbOut) {
    void* orb = orbit_pinned();
    if (!orb) return false;
    void* pt = read_ptr(orb, 0x18);          // ThirdPersonOrbitCam.player
    if (!pt || !alive(pt)) return false;
    Vec3 pp = ic_get_pos((Il2CppObject*)pt, NULL);
    if (!sane(pp)) return false;
    Vec3 off{0,0,0}; memcpy(&off, (char*)orb + 0x20, 12);
    out->x = pp.x + off.x; out->y = pp.y + off.y; out->z = pp.z + off.z;
    if (orbOut) *orbOut = orb;
    return true;
}
// line-of-sight: RaycastHit.distance @+28. tolerance 2 m (own/enemy hull).
static bool los_clear(Vec3 from, Vec3 to) {
    if (!ic_ray) return true;
    Vec3 d{to.x - from.x, to.y - from.y, to.z - from.z};
    float len = sqrtf(d.x*d.x + d.y*d.y + d.z*d.z);
    if (len < 0.001f || len > 900.f) return false;
    d.x /= len; d.y /= len; d.z /= len;
    Vec3 o{from.x + d.x*1.2f, from.y + d.y*1.2f, from.z + d.z*1.2f};
    float maxD = len - 1.2f;
    if (maxD <= 0) return true;
    unsigned char hit[64]; memset(hit, 0, sizeof(hit));
    bool blocked = false;
    try { blocked = ic_ray(o, d, hit, maxD, NULL); } catch (...) { return true; }
    if (!blocked) return true;
    float hd = 0.f; memcpy(&hd, hit + 28, 4);
    return hd >= maxD - 0.35f;   // R15: 2.0m tolerance let walls 1.9m in front count as clear
}
// world-camera picker: main/current/orbit-cams scored per-frame.
// Bug was main-first: UI/weapon overlay cams stole W2S -> boxes offset + only visible on pitch-up.
// Score: enabled required, ortho(UI)=-100, FOV 50-70 +10 / 35-85 +5, lower depth wins ties.
static int cam_score(Il2CppObject* c, float* fovOut) {
    if (!c || !alive(c)) return -1000;
    try {
        if (ic_beh_en && !ic_beh_en(c, NULL)) return -1000;
        bool ortho = ic_cam_ortho ? ic_cam_ortho(c, NULL) : false;
        if (ortho) return -100;
        float fov = ic_cam_fov ? ic_cam_fov(c, NULL) : 60.f;
        if (fovOut) *fovOut = fov;
        if (!(fov == fov) || fov < 1.f || fov > 179.f) return -500;
        int s = 0;
        if (fov >= 50.f && fov <= 70.f) s += 10; else if (fov >= 35.f && fov <= 85.f) s += 5;
        float depth = 0.f;
        try { if (ic_cam_depth) depth = ic_cam_depth(c, NULL); } catch (...) {}
        s -= (int)(depth > 0 ? depth : 0); // UI overlays use high depth
        return s;
    } catch (...) { return -1000; }
}
// R24: safe LOS probe. Only hit.distance is read (+28, long proven). Hits within
// 0.80 m of the aim point are treated as the target's own hull (point-blank own-body
// false "blocked" was the reported bug); anything stopping the ray earlier is a blocker.
static bool ray_blocked2(Vec3 from, Vec3 to, void* targetGO) {
    (void)targetGO;   // kept for call-site compatibility
    if (!ic_ray) return false;
    Vec3 d{to.x - from.x, to.y - from.y, to.z - from.z};
    float len = sqrtf(d.x*d.x + d.y*d.y + d.z*d.z);
    if (len < 0.25f) return false;
    if (len > 900.f) return true;
    d.x /= len; d.y /= len; d.z /= len;
    float maxD = len - 0.80f;      // margin: the target's own body occupies this band
    if (maxD <= 0.f) return false; // point-blank: nothing can be in between -> reachable
    unsigned char hit[64]; memset(hit, 0, sizeof(hit));
    bool got = false;
    try { got = ic_ray(from, d, hit, maxD, NULL); } catch (...) { return false; }
    if (!got) return false;
    float hd = 0.f; memcpy(&hd, hit + 28, 4);
    // R27: a hit right at the origin means the origin is embedded in geometry (own model / vehicle /
    // rock the camera sits in). Seen in-match as hd=0.1 with maxD=199 -> every enemy falsely "blocked".
    if (hd < 0.90f) return false;
    return hd < maxD - 0.05f;
}
// R21: one ray probe; true = a blocker stops the ray short of the target
static bool ray_blocked(Vec3 from, Vec3 to, float* hdOut) {
    if (!ic_ray) return false;
    Vec3 d{to.x - from.x, to.y - from.y, to.z - from.z};
    float len = sqrtf(d.x*d.x + d.y*d.y + d.z*d.z);
    if (len < 0.25f) return false;
    if (len > 900.f) return true;
    d.x /= len; d.y /= len; d.z /= len;
    float maxD = len - 0.30f;
    if (maxD <= 0.f) return false;
    unsigned char hit[64]; memset(hit, 0, sizeof(hit));
    bool blk = false;
    try { blk = ic_ray(from, d, hit, maxD, NULL); } catch (...) { return false; }
    if (!blk) return false;
    float hd = 0.f; memcpy(&hd, hit + 28, 4);
    if (hdOut) *hdOut = hd;
    return hd < maxD - 0.05f;
}
// in-match enemy-class discovery: when src=0 but hostile==0, sweep Assembly-CSharp
// classes matching AI/Enemy/Bot/Player/Zombie/Monster/Boss and log FindObjectsOfType counts.
// Finds the real in-match bot class if it isn't our 5 hooked types (no guessing).
static void discover_enemy_classes() {
    if (!g_scan_image || !p_img_class_count || !p_img_get_class || !p_class_get_name) return;
    if (!p_find_of_type || !p_class_get_type || !p_type_get_object) return;
    try {
        int n = p_img_class_count(g_scan_image);
        if (n <= 0 || n > 20000) return;
        int logged = 0;
        for (int i = 0; i < n && logged < 12; i++) {
            void* k = p_img_get_class(g_scan_image, i);
            if (!k) continue;
            const char* nm = p_class_get_name(k);
            if (!nm || !nm[0]) continue;
            bool hit = false;
            static const char* keys[] = {"AI", "Enemy", "enemy", "Bot", "bot", "Player", "player", "Zombie", "Monster", "Boss", "Soldier", "Character"};
            for (unsigned ki = 0; ki < sizeof(keys)/sizeof(keys[0]); ki++) {
                if (strstr(nm, keys[ki])) { hit = true; break; }
            }
            if (!hit) continue;
            void* typeObj = NULL;
            try {
                // class -> type -> System.Type object (same path as type_of)
                if (p_class_get_type && p_type_get_object) {
                    void* t = p_class_get_type(k);
                    if (t) typeObj = p_type_get_object(t);
                }
            } catch (...) { typeObj = NULL; }
            int cnt1 = -1, cnt2 = -1;
            if (typeObj && p_runtime_invoke) {
                try {
                    void* a1[1]; a1[0] = typeObj;
                    Il2CppArray* a = (Il2CppArray*)invoke(p_find_of_type, NULL, a1);
                    if (a) cnt1 = (int)a->max_length;
                } catch (...) {}
                try {
                    if (p_find_of_type2) {
                        static bool kTrue = true;
                        void* a2[2]; a2[0] = typeObj; a2[1] = &kTrue;
                        Il2CppArray* b = (Il2CppArray*)invoke(p_find_of_type2, NULL, a2);
                        if (b) cnt2 = (int)b->max_length;
                    }
                } catch (...) {}
            }
            LOGI("discover %s: type=%p n1=%d n2=%d", nm, typeObj, cnt1, cnt2);
            logged++;
        }
    } catch (...) {}
}
// R15/R6: registry-only entities carry no class tag -> derive it from the IL2CPP class name
static int infer_hpk(void* o) {
    if (!o || !p_class_get_name) return 0;
    void* klass = NULL; memcpy(&klass, o, sizeof(klass));
    if (!klass || ((uintptr_t)klass & 7)) return 0;
    const char* nm = p_class_get_name(klass);
    if (!nm) return 0;
    if (strstr(nm, "PlayerHealthManager")) return 1;
    if (strstr(nm, "AIController"))        return 2;
    if (strstr(nm, "ZombieEnemyAI"))       return 3;
    if (strstr(nm, "MonsterEnemy"))        return 4;
    if (strstr(nm, "EnemyAIBoss"))         return 5;
    return 0;
}
static void compute_frame() {
    g_compute_calls++; g_phase = 1;
    if (!g_icalls_ready) { g_compute_rc = 10; return; }
    // world camera: score main/current/last/orbit-main/orbit-cam per-frame (parachute/cinematic/scope swap)
    static Il2CppObject* s_lastCam = NULL;
    static int s_camSrc = 0; // 0=main 1=current 2=last 3=orbitMain 4=orbitCam
    Il2CppObject* cMain = ic_cam_main ? ic_cam_main(NULL) : NULL;
    Il2CppObject* cCur = ic_cam_cur ? ic_cam_cur(NULL) : NULL;
    void* orbForCam = orbit_pinned();
    Il2CppObject* cOrbM = NULL; Il2CppObject* cOrbC = NULL;
    if (orbForCam && alive(orbForCam)) {
        void* om = read_ptr(orbForCam, 0x188); // ThirdPersonOrbitCam.main
        void* oc = read_ptr(orbForCam, 0xF0);  // ThirdPersonOrbitCam.cam
        if (om && alive(om)) cOrbM = (Il2CppObject*)om;
        if (oc && alive(oc)) cOrbC = (Il2CppObject*)oc;
    }
    Il2CppObject* cands[5] = {cMain, cCur, s_lastCam, cOrbM, cOrbC};
    Il2CppObject* cam = NULL; int best = -1000; s_camSrc = 0;
    float bestFov = 60.f;
    for (int ci = 0; ci < 5; ci++) {
        float f = 60.f; int s = cam_score(cands[ci], &f);
        if (s > best) { best = s; cam = cands[ci]; s_camSrc = ci; bestFov = f; }
    }
    static long long lastCamLog = 0; long long nowCamLog = now_ms();
    if (nowCamLog - lastCamLog > 8000) {
        lastCamLog = nowCamLog;
        float fM = 0, fC = 0;
        int sM = cam_score(cMain, &fM), sC = cam_score(cCur, &fC);
        LOGI("campick src=%d fov=%.0f scores main=%d(%.0f) cur=%d(%.0f) last=%p orbM=%p orbC=%p",
             s_camSrc, (double)bestFov, sM, (double)fM, sC, (double)fC,
             s_lastCam, cOrbM, cOrbC);
    }
    if (!cam) {
        static long long lz = 0; long long tn = now_ms();
        if (tn - lz > 5000) { lz = tn; LOGI("compute: no camera (main+current+last all null)"); }
        if (pthread_mutex_trylock(&g_drawLock)==0){ g_drawCount = 0; pthread_mutex_unlock(&g_drawLock); }
        g_ent_last = 0; g_w2s_ok = 0; g_compute_rc = 1;
        return;
    }
    if (!alive(cam)) {
        if (pthread_mutex_trylock(&g_drawLock)==0){ g_drawCount = 0; pthread_mutex_unlock(&g_drawLock); }
        g_ent_last = 0; g_w2s_ok = 0; g_compute_rc = 7;
        return;
    }
    if (best >= 0) s_lastCam = cam; // only cache world-like (never cache UI/ortho as last good)
    int sw = ic_scr_w ? ic_scr_w(NULL) : 0;
    int sh = ic_scr_h ? ic_scr_h(NULL) : 0;
    if (sw <= 0 || sh <= 0) { g_compute_rc = 2; return; }
    g_sw = sw; g_sh = sh;   // publish for the render-thread replay (no il2cpp there)
    Il2CppObject* camTr = ic_get_xform(cam, NULL);
    if (!camTr || !alive(camTr)) {
        // camera object without transform (transition frame): keep last draw, don't freeze stats
        if (pthread_mutex_trylock(&g_drawLock)==0){ g_drawCount = 0; pthread_mutex_unlock(&g_drawLock); }
        g_ent_last = 0; g_w2s_ok = 0; g_compute_rc = 3;
        return;
    }
    Vec3 campos = ic_get_pos(camTr, NULL);
    if (!sane(campos)) {
        if (pthread_mutex_trylock(&g_drawLock)==0){ g_drawCount = 0; pthread_mutex_unlock(&g_drawLock); }
        g_ent_last = 0; g_w2s_ok = 0; g_compute_rc = 4;
        return;
    }

    reg_expire();
    g_phase = 2;
    // aim/vis origin: orbit pivot (own eye height), else camera pos
    Vec3 pivot = campos; void* orbObj = NULL;
    orbit_pivot(&pivot, &orbObj);
    if (orbObj && alive(orbObj)) {
        g_orbPtr = orbObj;   // R26
        memcpy((void*)&g_lastAngleV, (char*)orbObj + 0xEC, 4);
        memcpy((void*)&g_lastAngleH, (char*)orbObj + 0xE8, 4);
        void* octr = read_ptr(orbObj, 0xF0);   // R31: the camera transform this rig drives
        if (octr && alive(octr)) g_orbCamTr = octr;
    }
    g_camX = campos.x; g_camY = campos.y; g_camZ = campos.z;

    // --- build the live entity list from hooked Update calls ---
    struct Ent { void* obj; int kind; Vec3 root; Vec3 head; float hp; void* anim; bool vis; int hpk; bool dead; float dist; int los; bool boneHead; };
    static Ent ents[640];
    int nEnt = 0;
    float maxd2 = (float)g_maxDist * (float)g_maxDist;
    // copy-then-release: never hold regLock across il2cpp calls (scene jump can
    // kill a worker thread mid-hook; a blocking lock would wedge the main thread)
    if (pthread_mutex_trylock(&g_regLock) != 0) {
        g_compute_rc = 5;   // registry busy: drop this frame, 30 Hz covers
        return;
    }
    int regN = g_regN;
    // source of truth: FindObjectsOfType scan (falls back to the hook registry)
    static struct { void* obj; int kind; int hpk; } src[640];
    int srcN = 0;
    for (int i = 0; i < g_scanN && srcN < 640; i++) {
        uint32_t h = g_scan[i].h; int k = g_scan[i].kind; int hpk = g_scan[i].hpk;
        void* o = NULL;
        if (p_gchandle_target && h) o = p_gchandle_target(h);
        if (!o) continue;   // dead entity: skip, never touch a freed object
        src[srcN].obj = o; src[srcN].kind = k; src[srcN].hpk = hpk; srcN++;
    }
    // R6 fix: the hook registry is a UNION source, not an either/or fallback.
    // (scan returning only items used to hide every registered bot: reg=17 -> hostile=0)
    for (int i = 0; i < regN && srcN < 640; i++) {
        void* o = g_reg[i].obj;
        if (!o) continue;
        bool have = false;
        for (int k2 = 0; k2 < srcN; k2++) if (src[k2].obj == o) { have = true; break; }
        if (have) continue;
        src[srcN].obj = o; src[srcN].kind = g_reg[i].kind; src[srcN].hpk = infer_hpk(o); srcN++;
    }
    pthread_mutex_unlock(&g_regLock);
    for (int i = 0; i < srcN && nEnt < 640; i++) try {
        void* o = src[i].obj;
        int kind = src[i].kind;
        if (!alive(o)) continue;   // Destroyed shell: engine call would THROW
        int hpk = src[i].hpk;

        Il2CppObject* tr = ic_get_xform(o, NULL);
        if (!tr) continue;
        Vec3 p = ic_get_pos(tr, NULL);
        if (!sane(p)) continue;
        float dx = p.x - campos.x, dy = p.y - campos.y, dz = p.z - campos.z;
        float d2 = dx*dx + dy*dy + dz*dz;
        if (d2 > maxd2) continue;          // distance gate
        if (d2 < 1.0f) continue;           // self gate (1 m: S4 fix, was 3 m/9.0f eating point-blank enemies)
        bool dup = false;                  // dedupe: one GameObject seen via 2 component hooks
        for (int k = 0; k < nEnt; k++) {
            if (ents[k].kind != kind) continue; // S5 fix: only dedupe same kind (was cross-kind eating spawns)
            float ex = ents[k].root.x - p.x, ey = ents[k].root.y - p.y, ez = ents[k].root.z - p.z;
            if (ex*ex + ey*ey + ez*ez < 0.09f) { dup = true; break; } // 0.3 m (was 0.5 m/0.25)
        }
        if (dup) continue;
        Ent& e = ents[nEnt++];
        e.obj = o; e.kind = kind; e.root = p; e.head = p; e.hp = 100.f; e.anim = NULL; e.vis = true; e.los = -1; e.boneHead = false; // los -1 = not probed
        e.hpk = hpk; e.dead = false;
        e.dist = sqrtf(d2);
        if (kind == K_HOSTILE || kind == K_PLAYER) {
            float hv = -1.f; bool known = true; bool deadByFlag = false;
            if (hpk == 1) { memcpy(&hv, (char*)o + 0x18, 4); }
            else if (hpk == 2) { memcpy(&hv, (char*)o + 0xE4, 4); }
            else if (hpk == 3) {
                int hi = 0; memcpy(&hi, (char*)o + 0x1C, 4); hv = (float)hi;
                unsigned char d1 = 0; memcpy(&d1, (char*)o + 0xB9, 1); // ZombieEnemyAI.isDead
                if (d1 == 1) deadByFlag = true;
                if (hi < -100000 || hi > 100000) { known = false; }
            }
            else if (hpk == 5) {
                int hi = 0; memcpy(&hi, (char*)o + 0x1C, 4); hv = (float)hi;
                unsigned char d2b = 0; memcpy(&d2b, (char*)o + 0xD1, 1); // EnemyAIBoss.isDead
                if (d2b == 1) deadByFlag = true;
                if (hi < -100000 || hi > 100000) { known = false; }
            }
            else known = false;
            if (deadByFlag) { e.dead = true; e.hp = 0.f; }
            else if (known && hv == hv && hv <= 0.f && hv > -100000.f) {
                // hpk2 dormant pooled bots (includeInactive) often read 0 while alive:
                // require dist>1m AND sane pos (already) AND hv<=-0.5 to avoid 0.0 noise kill
                if (hpk == 2 && hv > -0.5f) { e.hp = (hv < 100000.f ? hv : 100.f); }
                else { e.dead = true; e.hp = 0.f; }
            }
            else if (known && hv == hv && hv < 100000.f) e.hp = hv;
        }
        if (kind == K_PLAYER) {
            memcpy(&e.hp, (char*)o + 0x18, 4);   // PlayerHealthManager.Health
            void* anim = read_ptr(o, 0x98);      // PlayerHealthManager.playerAnim
            e.anim = anim;
            if (anim && alive(anim) && ic_get_bone) {
                Il2CppObject* bt = ic_get_bone(anim, 10 /*HumanBodyBones.Head*/, NULL);
                if (!bt) bt = ic_get_bone(anim, 9, NULL);        // Neck(9)
                if (!bt) bt = ic_get_bone(anim, 8, NULL);        // Chest(8)
                if (bt && alive(bt)) {
                    Il2CppObject* btr = ic_get_xform(bt, NULL);
                    if (btr && alive(btr)) { Vec3 h = ic_get_pos(btr, NULL); if (sane(h)) e.head = h; }
                }
            }
            if (e.head.x == p.x && e.head.y == p.y && e.head.z == p.z)
                e.head = Vec3{p.x, p.y + 1.62f, p.z};
        } else if (kind == K_HOSTILE) {
            e.head = Vec3{p.x, p.y + 1.55f, p.z};   // fallback
            if (hpk == 2) {
                // R15: TarHead@0xF0 is the AI's TARGET head (in-match logs proved it == the local player's
                // head: hscr stayed (633,320) for bots at 2/26/54 m). It must never anchor box or aim.
                // Own head order: bone Head(10) -> head@0x1E0 -> root+1.75. Explicit flag (old gate
                // `e.head.y == p.y` was permanently false after the fallback -> dead code = M1).
                bool headOk = false;
                void* anim = read_ptr(o, 0x20);                    // AIController.anim
                e.anim = (anim && alive(anim)) ? anim : NULL;
                if (e.anim && ic_get_bone) {
                    try {
                        Il2CppObject* bt = ic_get_bone(e.anim, 10, NULL);
                        if (!bt) bt = ic_get_bone(e.anim, 9, NULL);        // Neck(9)
                        if (!bt) bt = ic_get_bone(e.anim, 8, NULL);        // Chest(8)
                        if (bt && alive(bt)) {
                            Il2CppObject* btr = ic_get_xform(bt, NULL);
                            if (btr && alive(btr)) { Vec3 h = ic_get_pos(btr, NULL); if (sane(h)) { e.head = h; headOk = true; e.boneHead = true; } }
                        }
                    } catch (...) {}
                }
                if (!headOk) {
                    void* hh = read_ptr(o, 0x1E0);                 // AIController.head (own head transform)
                    if (hh && alive(hh)) {
                        Il2CppObject* htr = ic_get_xform(hh, NULL);
                        if (htr && alive(htr)) { Vec3 h = ic_get_pos(htr, NULL); if (sane(h)) { e.head = h; headOk = true; } }
                    }
                }
                if (!headOk) e.head = Vec3{p.x, p.y + 1.75f, p.z}; // last resort only
            } else if (hpk == 3) {
                // ZombieEnemyAI.animator@0xB0 ONLY (Boss uses hpk5/0xC8: never cross-read)
                void* anim = read_ptr(o, 0xB0);
                e.anim = (anim && alive(anim)) ? anim : NULL;
                if (e.anim && ic_get_bone) {
                    Il2CppObject* bt = ic_get_bone(e.anim, 10, NULL);
                    if (!bt) bt = ic_get_bone(e.anim, 9, NULL);        // Neck(9)
                    if (!bt) bt = ic_get_bone(e.anim, 8, NULL);        // Chest(8)
                    if (bt && alive(bt)) {
                        Il2CppObject* btr = ic_get_xform(bt, NULL);
                        if (btr && alive(btr)) { Vec3 h = ic_get_pos(btr, NULL); if (sane(h)) e.head = h; }
                    }
                }
            } else if (hpk == 5) {
                // EnemyAIBoss.animator@0xC8 ONLY
                void* anim = read_ptr(o, 0xC8);
                e.anim = (anim && alive(anim)) ? anim : NULL;
                if (e.anim && ic_get_bone) {
                    Il2CppObject* bt = ic_get_bone(e.anim, 10, NULL);
                    if (!bt) bt = ic_get_bone(e.anim, 9, NULL);        // Neck(9)
                    if (!bt) bt = ic_get_bone(e.anim, 8, NULL);        // Chest(8)
                    if (bt && alive(bt)) {
                        Il2CppObject* btr = ic_get_xform(bt, NULL);
                        if (btr && alive(btr)) { Vec3 h = ic_get_pos(btr, NULL); if (sane(h)) e.head = h; }
                    }
                }
            } else if (hpk == 4) {
                // S10 note: MonsterEnemy has NO health field in dump.cs -> always alive by design
                // (corpse keeps red box; use Item ESP loot instead of dead-white for monsters)
                // MonsterEnemy.head @0x20 + anim @0x70
                void* mh = read_ptr(o, 0x20);
                if (mh && alive(mh)) {
                    Il2CppObject* mtr = ic_get_xform(mh, NULL);
                    if (mtr && alive(mtr)) {
                        Vec3 h = ic_get_pos(mtr, NULL);
                        if (sane(h)) e.head = h;
                    }
                }
                e.anim = read_ptr(o, 0x70);
            }
        }
    } catch (...) { continue; }   // destroyed entity threw mid-frame: skip it
    // (regLock already released right after the src copy above)

    static const float GREEN[3] = {0.f, 1.f, 0.f};
    static const float RED[3]   = {1.f, 0.15f, 0.15f};
    static const float CYAN[3]  = {0.f, 1.f, 1.f};
    static const float YELL[3]  = {1.f, 0.85f, 0.f};
    static const float GRAY[3]  = {0.45f, 0.45f, 0.45f};   // occluded (no ballistic LOS)
    static const float WHITE[3] = {0.92f, 0.92f, 0.92f};   // loot/dead marker
    static const float ORNG[3]  = {1.f, 0.55f, 0.f};

    // ---- raw diagnostics (every 5 s): world coords + W2S from both cameras ----
    {
        static long long lastdbg = 0;
        long long tn = now_ms();
        if (nEnt > 0 && tn - lastdbg > 5000) {
            lastdbg = tn;
            Il2CppObject* cam2 = ic_cam_cur ? ic_cam_cur(NULL) : NULL;
            Il2CppObject* tr2  = cam2 ? ic_get_xform(cam2, NULL) : NULL;
            Vec3 cp2 = tr2 ? ic_get_pos(tr2, NULL) : Vec3{0,0,0};
            Ent& e0 = ents[0];
            Vec3 s1 = ic_w2s(cam, e0.root, 2, NULL);
            Vec3 s2 = cam2 ? ic_w2s(cam2, e0.root, 2, NULL) : Vec3{0,0,0};
            LOGI("dbg cam=%d campos=(%.1f,%.1f,%.1f) curpos=(%.1f,%.1f,%.1f) root0=(%.1f,%.1f,%.1f) "
                 "w2s_main=(%.0f,%.0f,%.0f) w2s_cur=(%.0f,%.0f,%.0f) sw=%d sh=%d ent=%d",
                 s_camSrc,
                 campos.x, campos.y, campos.z, cp2.x, cp2.y, cp2.z,
                 e0.root.x, e0.root.y, e0.root.z, s1.x, s1.y, s1.z, s2.x, s2.y, s2.z,
                 g_sw, g_sh, nEnt);
            // S12 fix: per-hpk first sample (was only ents[0] -> regression blind)
            for (int hpkWant = 1; hpkWant <= 5; hpkWant++) {
                if (hpkWant == 4) continue; // 1,2,3,5 have hp/dead semantics; 4 monster always-alive
                for (int i = 0; i < nEnt; i++) {
                    if (ents[i].hpk != hpkWant) continue;
                    Vec3 hs = ic_w2s(cam, ents[i].head, 2, NULL);
                    Vec3 fs = ic_w2s(cam, ents[i].root, 2, NULL);
                    LOGI("dbg hpk=%d kind=%d hp=%.1f dead=%d anim=%p dist=%.0f root=(%.1f,%.1f,%.1f) head=(%.1f,%.1f,%.1f) wH=%.2f fscr=(%.0f,%.0f,%.0f) hscr=(%.0f,%.0f,%.0f) hh=%.0f",
                         hpkWant, ents[i].kind, ents[i].hp, (int)ents[i].dead,
                         ents[i].anim, ents[i].dist, ents[i].root.x, ents[i].root.y, ents[i].root.z,
                         ents[i].head.x, ents[i].head.y, ents[i].head.z,
                         ents[i].head.y - ents[i].root.y,
                         fs.x, fs.y, fs.z, hs.x, hs.y, hs.z, hs.y - fs.y);
                    break;
                }
            }
            // ==== R14 evidence: anchor mismatch / size vs pitch / LOS ray ====
            {
                float pitchDeg = 0.f;
                if (ic_get_fwd && camTr) {
                    Vec3 fw = ic_get_fwd(camTr, NULL);
                    if (fw.x == fw.x && fw.y == fw.y && fw.z == fw.z)
                        pitchDeg = asinf(fw.y) * 57.29578f;
                }
                for (int i = 0; i < nEnt; i++) {
                    Ent& e = ents[i];
                    if (e.kind != K_HOSTILE || e.dead) continue;
                    // skeleton anchor: (head bone + hips bone)/2 in screen space
                    float skelX = -1.f;
                    Vec3 bh{0,0,0}; bool bhOk = false;
                    if (e.anim && ic_get_bone) {
                        Il2CppObject* hb = ic_get_bone(e.anim, 10, NULL);
                        if (!hb) hb = ic_get_bone(e.anim, 9, NULL);        // Neck(9)
                        if (!hb) hb = ic_get_bone(e.anim, 8, NULL);        // Chest(8)
                        if (hb && alive(hb)) {
                            Il2CppObject* hbt = ic_get_xform(hb, NULL);
                            if (hbt && alive(hbt)) { Vec3 w = ic_get_pos(hbt, NULL); if (sane(w)) { bh = w; bhOk = true; } }
                        }
                        if (bhOk) {
                            Il2CppObject* pb = ic_get_bone(e.anim, 0, NULL);   // Hips
                            if (pb && alive(pb)) {
                                Il2CppObject* pbt = ic_get_xform(pb, NULL);
                                if (pbt && alive(pbt)) {
                                    Vec3 pw = ic_get_pos(pbt, NULL);
                                    if (sane(pw)) {
                                        Vec3 psc = ic_w2s(cam, pw, 2, NULL);
                                        Vec3 hsc = ic_w2s(cam, bh, 2, NULL);
                                        if (psc.z >= 0 && hsc.z >= 0) skelX = (psc.x + hsc.x) * 0.5f;
                                    }
                                }
                            }
                        }
                    }
                    Vec3 fs = ic_w2s(cam, e.root, 2, NULL);
                    Vec3 hs = ic_w2s(cam, e.head, 2, NULL);
                    float boxMid = (hs.x + fs.x) * 0.5f;
                    // LOS probe with the same call the code uses (pivot -> head)
                    unsigned char hit[64]; memset(hit, 0, sizeof(hit));
                    bool blk = false; float hd = -1.f, maxD = -1.f;
                    Vec3 dd{e.head.x - pivot.x, e.head.y - pivot.y, e.head.z - pivot.z};
                    float L = sqrtf(dd.x*dd.x + dd.y*dd.y + dd.z*dd.z);
                    if (ic_ray && L > 1.5f) {
                        dd.x/=L; dd.y/=L; dd.z/=L;
                        Vec3 o{pivot.x+dd.x*1.2f, pivot.y+dd.y*1.2f, pivot.z+dd.z*1.2f};
                        maxD = L - 1.2f;
                        try { blk = ic_ray(o, dd, hit, maxD, NULL); } catch (...) { blk = false; }
                        if (blk) memcpy(&hd, hit + 28, 4);
                    }
                    // R15 proof metric: distance(head actually used, bot's OWN head bone) ~ 0 => M1 fixed
                    float headVsBone = -1.f;
                    if (bhOk) {
                        float ex = e.head.x - bh.x, ey = e.head.y - bh.y, ez = e.head.z - bh.z;
                        headVsBone = sqrtf(ex*ex + ey*ey + ez*ez);
                    }
                    float vA = 0.f, vB = 0.f;
                    {
                        void* ob = orbit_pinned();
                        if (ob && alive(ob)) {
                            memcpy(&vA, (char*)ob + 0x8C, 4);   // maxVerticalAngle
                            memcpy(&vB, (char*)ob + 0x90, 4);   // minVerticalAngle
                        }
                    }
                    LOGI("diag hpk=%d pitch=%.0f wH=%.2f anim=%p bonehead=%d headVsBone=%.2f boxMidX=%.0f skelX=%.0f dxMidSkel=%.0f fscr=(%.0f,%.0f) hscr=(%.0f,%.0f) hh=%.0f dist=%.0f mz=%d rayhit=%d hd=%.1f maxD=%.1f vis=%d vlim=(%.3f,%.3f) angleV=%.2f angleH=%.2f",
                         e.hpk, (double)pitchDeg, (double)(e.head.y - e.root.y), e.anim, (int)bhOk,
                         (double)headVsBone, boxMid, skelX, (skelX > 0 ? boxMid - skelX : 0.f),
                         fs.x, fs.y, hs.x, hs.y, hs.y - fs.y, (double)e.dist,
                         (int)g_muzzleOk, (int)blk, (double)hd, (double)maxD, (int)e.vis,
                         (double)vA, (double)vB, (double)g_lastAngleV, (double)g_lastAngleH);
                    break;   // first alive hostile each 5 s
                }
            }
        }
    }

    // R15: locate the local player's gun muzzle (ballistics origin for LOS / can-hit)
    g_muzzleOk = false;
    for (int i = 0; i < nEnt; i++) {
        if (ents[i].kind != K_PLAYER) continue;
        void* sb = read_ptr(ents[i].obj, 0xA8);   // PlayerHealthManager.weapons (ShootBehaviour)
        if (!sb || !alive(sb)) continue;
        void* mz = read_ptr(sb, 0xB8);            // ShootBehaviour.gunMuzzle
        if (!mz || !alive(mz)) continue;
        Vec3 mp = ic_get_pos((Il2CppObject*)mz, NULL);
        if (!sane(mp)) continue;
        g_muzzlePos = mp; g_muzzleOk = true; break;
    }

    g_phase = 3;
    // --- aim target selection (pixel-nearest VISIBLE hostile within FOV circle) ---
    g_aimValid = false;
    static float g_aimDist = 0.f;
    if (g_aimbot || g_silent) {
        float cx = sw * 0.5f, cy = sh * 0.5f, best = (float)g_aimFovPx;
        for (int i = 0; i < nEnt; i++) {
            Ent& e = ents[i];
            if (e.kind != K_HOSTILE) continue;   // PHM == local player: never aim at self
            if (e.dead) continue;               // corpse: no aim
            // R23: aim only at a REAL bone (head bone, else chest bone) — never a guessed height
            Vec3 aimPt = e.head; int aimPart = e.boneHead ? 1 : 0;
            if (!e.boneHead && e.anim && ic_get_bone) {
                try {
                    Il2CppObject* cb = ic_get_bone(e.anim, 8, NULL);   // Chest(8)
                    if (cb && alive(cb)) {
                        Il2CppObject* cbt = ic_get_xform(cb, NULL);
                        if (cbt && alive(cbt)) { Vec3 w = ic_get_pos(cbt, NULL); if (sane(w)) { aimPt = w; aimPart = 2; } }
                    }
                } catch (...) {}
            }
            if (aimPart == 0) continue;
            Vec3 s = ic_w2s(cam, aimPt, 2, NULL);
            if (s.z < 0) continue;
            if (s.x < 0 || s.x > sw || s.y < 0 || s.y > sh) continue;
            float dx = s.x - cx, dy = s.y - cy;
            float d = sqrtf(dx*dx + dy*dy);
            if (d < best) {
                float wx = aimPt.x - pivot.x, wy = aimPt.y - pivot.y, wz = aimPt.z - pivot.z;
                float wd = sqrtf(wx*wx + wy*wy + wz*wz);
                if (wd < 2.0f) continue;
                if (ray_blocked2(g_muzzleOk ? g_muzzlePos : campos, aimPt, NULL)) continue;
                best = d; g_aimPoint = aimPt; g_aimDist = wd; g_aimValid = true; g_aimBone = aimPart;
                g_lastPivotY = pivot.y; g_lastCamY = campos.y;
            }
        }
    }
    {
        static long long lastLock = 0;
        if (g_aimValid && (g_silent || g_aimbot) && now_ms() - lastLock > 1000) {
            lastLock = now_ms();
            LOGI("aimlock bone=%s pt=(%.1f,%.1f,%.1f) dist=%.0f pvY=%.1f camY=%.1f dY=%.1f vlim=(%.2f,%.2f) deg=%d silent=%d aimbot=%d mz=%d",
                 (g_aimBone == 1 ? "Head" : (g_aimBone == 2 ? "Chest" : "none")),
                 g_aimPoint.x, g_aimPoint.y, g_aimPoint.z, (double)g_aimDist,
                 (double)g_lastPivotY, (double)g_lastCamY, (double)(g_lastCamY - g_lastPivotY),
                 (double)g_lastVMin, (double)g_lastVMax, g_lastVDegLike,
                 (int)g_silent, (int)g_aimbot, (int)g_muzzleOk);
        }
    }
    // aimbot: turn the orbit rig (visible crosshair walk at ANY range, no controller fight)
    if (g_aimbot && g_aimValid && orbObj && alive(orbObj)) {
        // R25: the crosshair is the CAMERA's forward. Computing yaw/pitch from the orbit pivot
        // (which sits lower/behind the camera) biases the impact upward by the camera-pivot
        // height (~1-1.5 m; ~3-4 deg at 20-30 m) -> "crosshair lands right above the head".
        // Solve the angles so the ray FROM THE CAMERA hits the aim point.
        Vec3 d{g_aimPoint.x - campos.x, g_aimPoint.y - campos.y, g_aimPoint.z - campos.z};
        float len = sqrtf(d.x*d.x + d.y*d.y + d.z*d.z);
        if (len > 1.0f) {
            float yaw = atan2f(d.x, d.z) * 57.29578f;
            float pitch = asinf(d.y / len) * 57.29578f + (float)g_aimPitchTrim * 0.1f;   // R28 trim + R35 vertical-flip fix (angleV positive=up, was -asin)
            float sens = (g_aimSmooth > 0 ? (float)g_aimSmooth : 6.0f);
            float curH = 0, curV = 0, minV = -80, maxV = 80;
            memcpy(&curH, (char*)orbObj + 0xE8, 4);
            memcpy(&curV, (char*)orbObj + 0xEC, 4);
            float rMin = 0, rMax = 0;
            memcpy(&rMax, (char*)orbObj + 0x8C, 4);   // ThirdPersonOrbitCam.maxVerticalAngle
            memcpy(&rMin, (char*)orbObj + 0x90, 4);   // ThirdPersonOrbitCam.minVerticalAngle
            // R29: only trust the game's limits when they actually look like DEGREES.
            // (This build stores them in another unit -> the old clamp collapsed our pitch to ~0 deg,
            //  i.e. "vertical never moves, aim sticks to one height".)
            bool degLike = (rMax > rMin) && (rMax - rMin >= 10.f) && (rMax - rMin < 180.f)
                           && (fabsf(rMax) <= 90.f) && (fabsf(rMin) <= 90.f);
            if (degLike) { maxV = rMax; minV = rMin; }
            g_lastVMin = rMin; g_lastVMax = rMax; g_lastVDegLike = degLike ? 1 : 0;
            g_lastAngleV = curV; g_lastAngleH = curH;
            float dh = yaw - curH;
            while (dh > 180) dh -= 360; while (dh < -180) dh += 360;
            float nh = curH + dh / sens, nv = curV + (pitch - curV) / sens;
            if (nv < minV) nv = minV; if (nv > maxV) nv = maxV;
            memcpy((char*)orbObj + 0xE8, &nh, 4);
            memcpy((char*)orbObj + 0xEC, &nv, 4);
        }
    }
    // --- build draw list (into a LOCAL buffer: no lock held during il2cpp calls,
    // --- so the render thread can never block the main thread and vice versa) ---
    g_ent_last = nEnt;
    g_w2s_ok = 0;
    // one-shot sanity dump of the first W2S results (proves the ABI is right)
    static int w2s_logged = 0;
    static DrawCmd ldraw[400]; int ldc = 0;
    auto lseg = [&](float x1, float y1, float x2, float y2, const float* c) {
        if (ldc >= 400) return;
        DrawCmd& d = ldraw[ldc++];
        d.pts[0]=x1; d.pts[1]=y1; d.pts[2]=x2; d.pts[3]=y2;
        d.col[0]=c[0]; d.col[1]=c[1]; d.col[2]=c[2]; d.n=2;
    };
    auto lbox = [&](float x, float y, float w, float h, const float* c) {
        if (ldc >= 400) return;
        DrawCmd& d = ldraw[ldc++];
        float p[16]={x,y,x+w,y,x+w,y,x+w,y+h,x+w,y+h,x,y+h,x,y+h,x,y};
        memcpy(d.pts,p,sizeof(p));
        d.col[0]=c[0]; d.col[1]=c[1]; d.col[2]=c[2]; d.n=16;
    };
    if (g_espBox || g_skeleton || g_diag_force) {
        int skelBudget = 6;   // full 19-bone only for 6 ents/frame: bounds managed calls
        static int skelRot = 0; // S7 fix: rotate start so all get full bones over frames (was fixed first-6 starvation)
        if (nEnt > 0) skelRot = (skelRot + 6) % nEnt;
        g_cZ = 0; g_cScr = 0; g_losProbes = 0; // cull + ray-budget counters
        for (int ii = 0; ii < nEnt; ii++) {
            int i = (ii + skelRot) % (nEnt > 0 ? nEnt : 1);
            Ent& e = ents[i];
            if (e.kind != K_HOSTILE) continue;   // PHM == local player: never box self
            if (e.dead) continue;                 // PASS 1: alive only (dead drawn in pass 2, capped)
            Vec3 feet = ic_w2s(cam, e.root, 2, NULL);
            Vec3 head = ic_w2s(cam, e.head, 2, NULL);
            // R15: the box is built from the SAME bone projections the skeleton uses, so box==skeleton
            // by construction (the old anchor pair "component transform + head" was a different rigid
            // frame -> dxMidSkel swung -207..+77 px and hh swung -62..+659 px with pitch).
            float bMinX = 0, bMaxX = 0, bMinY = 0, bMaxY = 0; bool boneBox = false;
            if (e.anim && ic_get_bone) {
                static const int AN[6] = {0, 10, 5, 6, 11, 12};   // Hips, Head, FootL, FootR, ShoulderL, ShoulderR
                Vec3 an[6]; bool anOk[6]; int anN = 0;
                for (int a = 0; a < 6; a++) {
                    anOk[a] = false;
                    try {
                        Il2CppObject* bt = ic_get_bone(e.anim, AN[a], NULL);
                        if (!bt || !alive(bt)) continue;
                        Il2CppObject* btr = ic_get_xform(bt, NULL);
                        if (!btr || !alive(btr)) continue;
                        Vec3 w = ic_get_pos(btr, NULL);
                        if (!sane(w)) continue;
                        Vec3 s = ic_w2s(cam, w, 2, NULL);
                        if (s.z < 0) continue;                    // only this anchor is invalid, not the whole box
                        an[a] = s; anOk[a] = true; anN++;
                    } catch (...) {}
                }
                if (anN >= 2 && anOk[1]) {                        // need the head + one more
                    float lo = 1e9f, hi = an[1].y;                // top = head bone
                    if (anOk[0] && an[0].y < lo) lo = an[0].y;    // bottom = lowest of Hips/Feet
                    if (anOk[2] && an[2].y < lo) lo = an[2].y;
                    if (anOk[3] && an[3].y < lo) lo = an[3].y;
                    if (lo > 1e8f) lo = an[1].y;
                    float lx = an[1].x, hx = an[1].x;
                    for (int a = 0; a < 6; a++) {
                        if (!anOk[a]) continue;
                        if (an[a].x < lx) lx = an[a].x;
                        if (an[a].x > hx) hx = an[a].x;
                    }
                    bMinY = lo; bMaxY = hi; bMinX = lx; bMaxX = hx; boneBox = true;
                }
            }
            if (!boneBox) {                                       // no bones: root + class height, same-frame projection
                if (feet.z < 0 || head.z < 0) { g_cZ++; continue; }
                float H = (e.hpk == 5 ? 2.4f : e.hpk == 4 ? 1.5f : e.hpk == 3 ? 1.7f : 1.8f);
                Vec3 topW{e.root.x, e.root.y + H, e.root.z};
                Vec3 top = ic_w2s(cam, topW, 2, NULL);
                if (top.z < 0) top = head;
                bMinY = (feet.y < top.y ? feet.y : top.y);
                bMaxY = (feet.y > top.y ? feet.y : top.y);
                bMinX = (head.x < feet.x ? head.x : feet.x);
                bMaxX = (head.x > feet.x ? head.x : feet.x);
            }
            if (bMaxX < -50 || bMinX > sw + 50 || bMaxY < -50 || bMinY > sh + 50) { g_cScr++; continue; }
            float hh = bMaxY - bMinY;
            if (hh <= 2.f || hh > sh * 2.0f) { g_cScr++; continue; }   // no clamp-snap: cull only degenerate
            float wNeed = hh * 0.45f;
            if (bMaxX - bMinX < wNeed) {                          // shoulders narrower than body silhouette
                float c = (bMinX + bMaxX) * 0.5f;
                bMinX = c - wNeed * 0.5f; bMaxX = c + wNeed * 0.5f;
            }
            float ww = bMaxX - bMinX;
            float x = bMinX, y = bMinY;
            // R21 3-state reachability: 2 = head reachable (可打) / 1 = body only (半掩体) / 0 = blocked (背挡)
            {
                Vec3 org = g_muzzleOk ? g_muzzlePos : campos;
                Vec3 body{e.root.x, e.root.y + 1.05f, e.root.z};
                if (e.anim && ic_get_bone) {
                    try {
                        Il2CppObject* cb = ic_get_bone(e.anim, 8, NULL);   // Chest(8)
                        if (cb && alive(cb)) {
                            Il2CppObject* cbt = ic_get_xform(cb, NULL);
                            if (cbt && alive(cbt)) { Vec3 w = ic_get_pos(cbt, NULL); if (sane(w)) body = w; }
                        }
                    } catch (...) {}
                }
                if (g_losProbes < 40) {
                    g_losProbes++;
                    bool blkHead = ray_blocked2(org, e.head, NULL);
                    bool blkBody = ray_blocked2(org, body, NULL);
                    e.los = los_stable(e.obj, blkHead ? (blkBody ? 0 : 1) : 2);
                }
                e.vis = (e.los > 0);
            }
            g_w2s_ok++;
            if (w2s_logged < 3) {
                w2s_logged++;
                LOGI("w2s sample: root=(%.1f,%.1f,%.1f) box=(%.0f,%.0f,%.0fx%.0f) head_scr=(%.0f,%.0f) bone=%d screen=%dx%d",
                     e.root.x, e.root.y, e.root.z, x, y, ww, hh, head.x, head.y, (int)boneBox, g_sw, g_sh);
            }
            const float* col = (e.kind == K_HOSTILE) ? (e.los == 2 ? RED : (e.los == 1 ? ORNG : GRAY)) : GREEN;
            if (g_espBox || g_diag_force) lbox(x, y, ww, hh, col);
            if (g_skeleton || g_diag_force) {
                bool full = false;
                if (e.anim && ic_get_bone && skelBudget > 0) {
                    // HumanBodyBones: Hips0 UL1 UR2 LL3 LR4 FL5 FR6 Spine7 Chest8 Neck9 Head10
                    //                 SL11 SR12 UAL13 UAR14 LAL15 LAR16 HL17 HR18
                    static const int B[] = {10,9,8,7,0, 11,13,15,17, 12,14,16,18, 1,3,5, 2,4,6};
                    Vec3 sp[19]; bool ok[19];
                    try {
                    for (int b = 0; b < 19; b++) {
                        ok[b] = false;
                        Il2CppObject* bt = ic_get_bone(e.anim, B[b], NULL);
                        if (!bt || !alive(bt)) continue;
                        Il2CppObject* btr = ic_get_xform(bt, NULL);
                        if (!btr || !alive(btr)) continue;
                        Vec3 w = ic_get_pos(btr, NULL);
                        if (!sane(w)) continue;
                        Vec3 s = ic_w2s(cam, w, 2, NULL);
                        if (s.z < 0) continue;
                        if (s.x < -50 || s.x > sw + 50 || s.y < -50 || s.y > sh + 50) continue;
                        sp[b] = s; ok[b] = true;
                    }
                    } catch (...) { for (int b = 0; b < 19; b++) ok[b] = false; }
                    static const int E[][2] = {{0,1},{1,2},{2,3},{3,4},{2,5},{5,6},{6,7},{7,8},{2,9},{9,10},{10,11},{11,12},{4,13},{13,14},{14,15},{4,16},{16,17},{17,18}};
                    int drawnSeg = 0;
                    for (unsigned k = 0; k < sizeof(E)/sizeof(E[0]); k++) {
                        if (ok[E[k][0]] && ok[E[k][1]]) {
                            lseg(sp[E[k][0]].x, sp[E[k][0]].y, sp[E[k][1]].x, sp[E[k][1]].y, col);
                            drawnSeg++;
                        }
                    }
                    full = drawnSeg >= 5;
                    if (full) skelBudget--;
                }
                if (!full) {
                    lseg(head.x, head.y, feet.x, feet.y, col);
                    lseg(x, y + hh * 0.75f, x + ww, y + hh * 0.75f, col);
                }
            }
        }
        // PASS 2: dead/loot markers, capped so pooled corpses can't evict alive boxes
        if (g_espBox && !g_diag_force) {
            int deadN = 0;
            for (int i = 0; i < nEnt && deadN < 30; i++) {
                Ent& e = ents[i];
                if (e.kind != K_HOSTILE || !e.dead) continue;
                Vec3 feet = ic_w2s(cam, e.root, 2, NULL);
                if (feet.z >= 0 && feet.x > -50 && feet.x < sw + 50 &&
                    feet.y > -50 && feet.y < sh + 50) {
                    lbox(feet.x - 7, feet.y - 7, 14, 14, WHITE);
                    g_w2s_ok++; deadN++;
                }
            }
        }
    }
    // FOV circle at screen centre (same px radius as aim selection)
    // S8 fix: FOV uses CYAN (was ORNG merged into yellow item bucket -> confusion)
    if (g_aimbot || g_silent) {
        float cx = sw * 0.5f, cy = sh * 0.5f, r = (float)g_aimFovPx;
        const int SEG = 28;
        float px = cx + r, py = cy;
        for (int k = 1; k <= SEG; k++) {
            float a = k * 6.2831853f / SEG;
            float x = cx + r * cosf(a), y = cy + r * sinf(a);
            lseg(px, py, x, y, CYAN);
            px = x; py = y;
        }
        lseg(cx - 6, cy, cx + 6, cy, CYAN);
        lseg(cx, cy - 6, cx, cy + 6, CYAN);
    }
    if (g_itemEsp) {
        int itemN = 0; // S2 fix: cap 40 nearest items (was 160*4=640 cmds evicting enemy boxes over 400 budget)
        for (int i = 0; i < nEnt; i++) {
            if (itemN >= 40) break;
            Ent& e = ents[i];
            if (e.kind != K_ITEM) continue;
            if (e.dist > (float)g_maxDist) continue; // reuse S12 dist (far loot skipped first)
            bool used = false; memcpy(&used, (char*)e.obj + 0x98, 1);
            if (used) continue;
            Vec3 s = ic_w2s(cam, e.root, 2, NULL);
            if (s.z < 0) continue;
            if (s.x < -50 || s.x > sw + 50 || s.y < -50 || s.y > sh + 50) continue;
            float d = 7.f;
            lseg(s.x-d, s.y, s.x, s.y-d, YELL);
            lseg(s.x, s.y-d, s.x+d, s.y, YELL);
            lseg(s.x+d, s.y, s.x, s.y+d, YELL);
            lseg(s.x, s.y+d, s.x-d, s.y, YELL);
            itemN++;
        }
    }
    // publish under lock (short critical section, no il2cpp inside)
    if (pthread_mutex_trylock(&g_drawLock) == 0) {
        g_drawCount = g_diag_only ? 0 : (ldc > 400 ? 400 : ldc);   // R14: diag-only never publishes
        memcpy(g_draw, ldraw, sizeof(DrawCmd) * g_drawCount);
        pthread_mutex_unlock(&g_drawLock);
    }
    g_phase = 5;
    g_compute_rc = 0;

    // throttled telemetry so the pipeline is verifiable from logcat
    static long long lastlog = 0;
    long long tl = now_ms();
    if (tl - lastlog > 5000) {
        lastlog = tl;
        int nplayer = 0, nhost = 0, nitem = 0, nvis = 0, ndead = 0, nbody = 0, nblk = 0, nunk = 0;
        for (int i = 0; i < nEnt; i++) {
            if (ents[i].kind == K_PLAYER) nplayer++;
            else if (ents[i].kind == K_ITEM) nitem++;
            else {
                if (ents[i].dead) ndead++;
                else {
                    nhost++;
                    if (ents[i].los == 2) nvis++;
                    else if (ents[i].los == 1) nbody++;
                    else if (ents[i].los == 0) nblk++;
                    else nunk++;   // culled before probing
                }
            }
        }
        LOGI("frame %u reg=%d ent=%d (player=%d hostile=%d canhitHead=%d canhitBody=%d blocked=%d unprobed=%d dead=%d item=%d) draw=%d drawn=%d swap=%u aim=%d cullZ=%d cullScr=%d",
             g_frame, regN, nEnt, nplayer, nhost, nvis, nbody, nblk, nunk, ndead, nitem, g_drawCount, g_drawn, g_swap_calls, (int)g_aimValid, g_cZ, g_cScr);
        // discover real in-match bot class when in-game but zero hostiles (30 s throttle)
        if (nhost == 0 && ndead == 0) {
            static long long lastDisc = 0;
            if (tl - lastDisc > 30000) { lastDisc = tl; LOGI("discover: begin (in-game zero-hostile sweep)"); discover_enemy_classes(); }
        }
    }
}

// Heavy work is throttled to 10 Hz and runs from ONE driver (GameController::Update).
// Registration hooks only push the object pointer into the registry — they must stay
// allocation-free and branch-free because the game calls them for every entity.
static volatile int g_in_hook = 0;   // legacy mirror (hb only)
static volatile int g_owner = 0;     // compute guard owner tid (0 = free)
static volatile long long g_since = 0;
static unsigned g_scan_ticks = 0;
static void driver(int src) {                       // src: 0=GameController 1=MainMenu 2=ZombieAI...
    g_frame++;
    if (!g_icalls_ready) { static int tries = 0; if (tries < 300) { tries++; resolve_engine(); } }
    // cheap heartbeat: always on (registry is filled by the register-only hooks,
    // independent of toggles) — this is what proves whether ESP has data in-game.
    static long long lastlog = 0;
    long long tl = now_ms();
    if (tl - lastlog > 5000) {
        lastlog = tl;
        LOGI("hb src=%d frame=%u reg=%d ready=%d swap=%u drawn=%d ent=%d w2s=%d cc=%u rc=%d inh=%d ctd=%u ph=%d tog(box=%d skel=%d item=%d aim=%d silent=%d)",
             src, g_frame, g_regN, (int)g_icalls_ready, g_swap_calls, g_drawn, g_ent_last, g_w2s_ok,
             g_compute_calls, g_compute_rc, g_owner, g_contend, g_phase,
             (int)g_espBox, (int)g_skeleton, (int)g_itemEsp, (int)g_aimbot, (int)g_silent);
    }
    if (!g_espBox && !g_skeleton && !g_itemEsp && !g_aimbot && !g_silent && !g_diag) return;  // R21: g_silent was missing here (silent-aim alone never computed an aim point)
    g_diag_only = (!g_espBox && !g_skeleton && !g_itemEsp && !g_aimbot && g_diag && !g_diag_force) ? 1 : 0;
    static long long lastBySrc[2] = {0, 0}; // R1 fix: per-src throttle (was shared -> menu/game alternate starve)
    int li = (src == 0 ? 0 : 1);
    int thr = g_diag_only ? 1000 : 33;    // R14: 1 Hz when diagnostics-only, else 30 Hz
    if (tl - lastBySrc[li] < thr) return; // 30 Hz: 10 Hz lags behind fast camera turns
    lastBySrc[li] = tl;
    // single-flight with dead-owner steal: guard = (owner_tid, since_ms).
    // same thread -> re-entry return; other thread <3s -> skip; >3s -> owner
    // died mid-compute (scene jump kills worker threads holding the guard):
    // steal it, a torn frame beats a permanent wedge.
    static __thread int tl_hook = 0;
    if (tl_hook) return;
    int me = gettid();
    int owner = g_owner;
    if (owner != 0) {
        if (owner == me) return;
        if (tl - g_since < 3000) { g_contend++; return; }
        LOGI("guard: steal compute from dead owner=%d", owner);
    }
    g_owner = me; g_since = tl;
    tl_hook = 1;
    g_armed = 1;
    if (sigsetjmp(g_jb, 1)) {
        g_segv++; g_compute_rc = 7;
    } else {
        try { compute_frame(); } catch (...) { g_compute_rc = 6; }
    }
    // R4 fix: scan+watchdog INSIDE guard (was outside -> concurrent scan_clear freed handles while peer compute resolved them)
    // refresh the instance list at ~1 Hz wall-clock (frame counter runs at
    // hook-call rate, not render rate — time-based keeps GC churn bounded)
    static long long last_scan_ms = 0;
    if (tl - last_scan_ms > 1000) { last_scan_ms = tl; scan_run(); }
    g_scan_ticks++;
    // watchdog: in-game but scan empty for a while (scene changed image) -> force re-init
    // S9 fix: full clear (was image-only, stale Type/Method kept -> permanent empty scan)
    if (src == 0 && g_scan_ready && g_scanN == 0) {
        static long long lastEmpty = 0;
        long long tn2 = now_ms();
        if (!lastEmpty) lastEmpty = tn2;
        if (tn2 - lastEmpty > 8000) {
            lastEmpty = tn2;
            LOGI("watchdog: empty scan 8s in-game, reset image+types");
            g_scan_ready = 0; g_scan_image = NULL; g_core_image = NULL;
            g_tyPHM = g_tyZombie = g_tyBoss = g_tyMonster = g_tyItem = g_tyAI = NULL; g_tyOrbit = NULL;
            p_find_of_type = p_find_of_type2 = NULL;
            if (g_orbitH && p_gchandle_free) { p_gchandle_free(g_orbitH); g_orbitH = 0; }
        }
    }
    g_armed = 0;
    tl_hook = 0;
    g_owner = 0;
}

// register-only hook (no compute, no allocation)
#define REG_HOOK(fn, orig, kind)                                               \
    static void fn(void* thiz, const MethodInfo* m) {                          \
        if (!orig) return;                                                     \
        orig(thiz, m);                                                         \
        if (g_owner) return;                                                     \
        reg_touch(thiz, kind);                                                  \
    }
// driving hook
#define DRIVE_HOOK(fn, orig, srcid)                                            \
    static void fn(void* thiz, const MethodInfo* m) {                          \
        if (!orig) return;                                                     \
        orig(thiz, m);                                                         \
        driver(srcid);                                                         \
    }

// GameController::Update is the one hook proven to fire; take its `this` to bootstrap
static void hk_gc_boot(void* thiz, const MethodInfo* m);
static void (*orig_gc_boot)(void*, const MethodInfo*) = NULL;
static void hk_gc(void* thiz, const MethodInfo* m) {
    if (!orig_gc) return;
    orig_gc(thiz, m);
    scan_init(thiz);                    // first call: resolve image + type objects
    if (!p_find_of_type) {              // first call with a camera: resolve FindObjectsOfType
        Il2CppObject* cam = ic_cam_main ? ic_cam_main(NULL) : NULL;
        if (cam) find_of_type_method(cam);
    }
    driver(0);
}
REG_HOOK(hk_phm_start, orig_phm_start, K_PLAYER)   // PlayerHealthManager::Start (spawn-time, low frequency)
REG_HOOK(hk_zen,  orig_zen,  K_HOSTILE)
REG_HOOK(hk_boss, orig_boss, K_HOSTILE)
REG_HOOK(hk_mon,  orig_mon,  K_HOSTILE)
// AIController::Update: register-only (GC remains the single driver: one thread,
// one compute at a time — multi-driver caused concurrent computes corrupting statics)
REG_HOOK(hk_ai,   orig_ai,   K_HOSTILE)   // AIController::Update (battle-royale bots)
REG_HOOK(hk_item, orig_item, K_ITEM)
DRIVE_HOOK(hk_menu, orig_menu, 1)             // MainMenuV8::Update (menu stage heartbeat)

// R31: post-LateUpdate camera aim. The rig's angleV is re-integrated by the game every frame
// (vertical input handler pulls it back to ~0), so writing angleV alone NEVER moves the pitch
// in-flight. Writing the camera Transform's rotation after the game's own LateUpdate wins the frame.
static void (*orig_orb_late)(void*, const MethodInfo*) = NULL;
static void hk_orb_late(void* thiz, const MethodInfo* m) {
    if (orig_orb_late) orig_orb_late(thiz, m);
    if (!g_aimbot || !g_aimValid || !g_icalls_ready) return;
    if (!g_orbCamTr || !alive(g_orbCamTr) || !ic_get_pos || !ic_look_rot || !ic_set_rot) return;
    Vec3 cp = ic_get_pos((Il2CppObject*)g_orbCamTr, NULL);
    if (!sane(cp)) return;
    Vec3 d{g_aimPoint.x - cp.x, g_aimPoint.y - cp.y, g_aimPoint.z - cp.z};
    float len = sqrtf(d.x*d.x + d.y*d.y + d.z*d.z);
    if (len < 2.0f) return;
    d.x /= len; d.y /= len; d.z /= len;
    Vec3 up{0,1,0};
    float pitch = asinf(d.y) * 57.29578f + (float)g_aimPitchTrim * 0.1f;   // R35 vertical-flip fix
    float yaw   = atan2f(d.x, d.z) * 57.29578f;
    if (thiz && alive(thiz)) {   // keep the rig in sync so the game converges instead of fighting
        memcpy((char*)thiz + 0xE8, &yaw, 4);
        memcpy((char*)thiz + 0xEC, &pitch, 4);
    }
    Quat q = ic_look_rot(d, up, NULL);
    ic_set_rot((Il2CppObject*)g_orbCamTr, q, NULL);
}

// --- silent aim: snap -> fire -> restore, all inside ShootByScript ---
typedef void (*shoot_t)(void*, const MethodInfo*);
static shoot_t orig_shoot = NULL;
// TPS ballistics follow gunMuzzle.forward (NOT the Unity camera): aim the muzzle.
// ShootBehaviour.gunMuzzle @0xB8, shotErrorRate(float) @0x64 zeroed for the shot.
static void (*orig_shoot2)(void*, const MethodInfo*) = NULL;   // R21: ShootBehaviour.Shooting
static void aim_shot(void* thiz, const MethodInfo* m, shoot_t real);
static void hk_shoot(void* thiz, const MethodInfo* m) { aim_shot(thiz, m, orig_shoot); }
static void hk_shoot2(void* thiz, const MethodInfo* m) { aim_shot(thiz, m, orig_shoot2); }
static void aim_shot(void* thiz, const MethodInfo* m, shoot_t real) {
    if (!real) return;
    if (!thiz || !alive(thiz)) { real(thiz, m); return; }
    // S3 fix: never nest with compute's sigjmp (same global g_jb) + C++ throw guard (was unprotected -> random crash blamed on ESP)
    if ((g_silent || g_aimbot) && g_aimValid && g_icalls_ready && ic_set_rot && ic_look_rot && ic_get_rot) {
        if (g_armed) { real(thiz, m); return; } // compute in flight: skip aim this shot
        g_armed = 1;
        if (sigsetjmp(g_jb, 1)) { g_armed = 0; real(thiz, m); return; }
        try {
        void* muzzle = read_ptr(thiz, 0xB8);
        if (muzzle && alive(muzzle)) {
            Vec3 mpos = ic_get_pos((Il2CppObject*)muzzle, NULL);
            if (sane(mpos)) {
                Vec3 dir{g_aimPoint.x - mpos.x, g_aimPoint.y - mpos.y, g_aimPoint.z - mpos.z};
                float len = sqrtf(dir.x*dir.x + dir.y*dir.y + dir.z*dir.z);
                if (len > 2.0f) {
                    dir.x /= len; dir.y /= len; dir.z /= len;
                    { static long long lz=0; long long tn=now_ms();
                      if (tn-lz>5000){ lz=tn; LOGI("shoot fix: dist=%.0f silent=%d aim=%d", (double)len, (int)g_silent, (int)g_aimbot); } }
                    Vec3 up{0,1,0};
                    Quat saved = ic_get_rot((Il2CppObject*)muzzle, NULL);
                    Quat hard = ic_look_rot(dir, up, NULL);
                    float savedErr = 0.f; bool haveErr = false;
                    if (true) { memcpy(&savedErr, (char*)thiz + 0x64, 4); haveErr = true;
                                float zero = 0.f; memcpy((char*)thiz + 0x64, &zero, 4); }
                    if (g_silent) {
                        // R26: silent = snap the CAMERA ray (crosshair) onto the bone for this single shot,
                        // then restore. Without this, a camera-based fire model ignores the muzzle rotation.
                        bool orbSnapped = false;
                        float savedH = 0.f, savedV = 0.f;
                        if (g_orbPtr && alive(g_orbPtr) && g_aimValid) {
                            Vec3 cd{g_aimPoint.x - g_camX, g_aimPoint.y - g_camY, g_aimPoint.z - g_camZ};
                            float cl = sqrtf(cd.x*cd.x + cd.y*cd.y + cd.z*cd.z);
                            if (cl > 2.0f) {
                                float syaw = atan2f(cd.x, cd.z) * 57.29578f;
                                float spit = asinf(cd.y / cl) * 57.29578f + (float)g_aimPitchTrim * 0.1f;   // R28 trim + R35 vertical-flip fix (angleV positive=up, was -asin)
                                memcpy(&savedH, (char*)g_orbPtr + 0xE8, 4);
                                memcpy(&savedV, (char*)g_orbPtr + 0xEC, 4);
                                memcpy((char*)g_orbPtr + 0xE8, &syaw, 4);
                                memcpy((char*)g_orbPtr + 0xEC, &spit, 4);
                                orbSnapped = true;
                            }
                        }
                        // R31: also rotate the CAMERA transform for the instant of the shot
                        Quat savedCam{}; bool camSet = false;
                        if (g_orbCamTr && alive(g_orbCamTr) && ic_get_rot && ic_look_rot && ic_set_rot) {
                            Vec3 cpp = ic_get_pos((Il2CppObject*)g_orbCamTr, NULL);
                            if (sane(cpp)) {
                                Vec3 cd{g_aimPoint.x - cpp.x, g_aimPoint.y - cpp.y, g_aimPoint.z - cpp.z};
                                float cl2 = sqrtf(cd.x*cd.x + cd.y*cd.y + cd.z*cd.z);
                                if (cl2 > 2.0f) {
                                    cd.x/=cl2; cd.y/=cl2; cd.z/=cl2;
                                    Vec3 upv{0,1,0};
                                    Quat qc = ic_look_rot(cd, upv, NULL);
                                    savedCam = ic_get_rot((Il2CppObject*)g_orbCamTr, NULL);
                                    ic_set_rot((Il2CppObject*)g_orbCamTr, qc, NULL);
                                    camSet = true;
                                }
                            }
                        }
                        ic_set_rot((Il2CppObject*)muzzle, hard, NULL);
                        real(thiz, m); // keep armed throughout
                        ic_set_rot((Il2CppObject*)muzzle, saved, NULL);
                        if (camSet) ic_set_rot((Il2CppObject*)g_orbCamTr, savedCam, NULL);   // R31 restore
                        if (orbSnapped) {   // restore the view immediately (this frame renders silently)
                            memcpy((char*)g_orbPtr + 0xE8, &savedH, 4);
                            memcpy((char*)g_orbPtr + 0xEC, &savedV, 4);
                        }
                    } else {
                        float t = 1.0f / (g_aimSmooth > 0 ? (float)g_aimSmooth : 6.0f);
                        Quat sm{saved.x + (hard.x - saved.x) * t, saved.y + (hard.y - saved.y) * t,
                                saved.z + (hard.z - saved.z) * t, saved.w + (hard.w - saved.w) * t};
                        float nl = sqrtf(sm.x*sm.x + sm.y*sm.y + sm.z*sm.z + sm.w*sm.w);
                        if (nl > 1e-6f) { sm.x/=nl; sm.y/=nl; sm.z/=nl; sm.w/=nl; }
                        ic_set_rot((Il2CppObject*)muzzle, sm, NULL);
                        real(thiz, m); // keep armed throughout
                        // aimbot: keep muzzle on target (no restore)
                    }
                    if (haveErr) memcpy((char*)thiz + 0x64, &savedErr, 4);
                    g_armed = 0;
                    return;
                }
            }
        }
        } catch (...) { g_armed = 0; return; } // S3: swallow (don't re-fire throwing orig)
        g_armed = 0;
    }
    real(thiz, m);
}

// ---------------- R32: ad bypass (game-side adManager) ----------------
// The pack ships AppLovin MAX + AdMob + IronSource + UnityAds; all entry points the GAME uses
// funnel through its own adManager class, so hooking that class removes every ad without
// touching the SDKs (no SDK callbacks can leak through).
static void (*orig_ad_iclose)(void*, const MethodInfo*) = NULL;                 // InterstitialClosed
static void (*orig_ad_rclose)(void*, const MethodInfo*) = NULL;                 // RewardAdClosed
static void (*orig_ad_complete)(void*, bool, Il2CppObject*, const MethodInfo*) = NULL; // CompleteMethod
static void (*orig_ad_showInter)(void*, const MethodInfo*) = NULL;
static void (*orig_ad_showCust)(void*, int, const MethodInfo*) = NULL;
static void (*orig_ad_showRew)(void*, int, const MethodInfo*) = NULL;
static void (*orig_ad_start)(void*, int, const MethodInfo*) = NULL;
static void (*orig_ad_showBanner)(void*, const MethodInfo*) = NULL;
static volatile int g_adWant = 1;   // 1 = interstitial path, 2 = rewarded path

static void ad_trace(const char* what, int type) {
    static long long last = 0;
    long long tn = now_ms();
    if (tn - last > 300) { last = tn; LOGI("AD: %s type=%d want=%d noAds=%d", what, type, g_adWant, g_noAds); }
}
static void ad_grant(void* thiz) {   // mimic "rewarded ad watched successfully"
    if (!thiz || !alive(thiz)) return;
    if (orig_ad_complete && p_string_new) {
        try {
            Il2CppObject* s = p_string_new("");
            orig_ad_complete(thiz, true, s, NULL);
        } catch (...) {}
    }
}
static void hk_ad_iclose(void* t, const MethodInfo* m) { ad_trace("InterstitialClosed", -1); if (orig_ad_iclose) orig_ad_iclose(t, m); }
static void hk_ad_rclose(void* t, const MethodInfo* m) { ad_trace("RewardAdClosed", -1); if (orig_ad_rclose) orig_ad_rclose(t, m); }
static void hk_ad_complete(void* t, bool ok, Il2CppObject* adv, const MethodInfo* m) {
    ad_trace("CompleteMethod", ok ? 1 : 0);
    if (orig_ad_complete) orig_ad_complete(t, ok, adv, m);
}
static void hk_ad_showInter(void* t, const MethodInfo* m) {
    ad_trace("ShowInterstitial", -1);
    if (g_noAds) { if (orig_ad_iclose && t && alive(t)) orig_ad_iclose(t, NULL); return; }
    if (orig_ad_showInter) orig_ad_showInter(t, m);
}
static void hk_ad_showCust(void* t, int type, const MethodInfo* m) {
    ad_trace("ShowCustomInterstitial", type);
    if (g_noAds) { if (orig_ad_iclose && t && alive(t)) orig_ad_iclose(t, NULL); return; }
    if (orig_ad_showCust) orig_ad_showCust(t, type, m);
}
static void hk_ad_showRew(void* t, int type, const MethodInfo* m) {
    ad_trace("ShowRewerdVideo", type);
    if (g_noAds) { ad_grant(t); return; }
    if (orig_ad_showRew) orig_ad_showRew(t, type, m);
}
static void hk_ad_start(void* t, int type, const MethodInfo* m) {
    ad_trace("StartAd", type);
    if (g_noAds) {
        if (type <= 0) { if (orig_ad_iclose && t && alive(t)) orig_ad_iclose(t, NULL); }
        else           { ad_grant(t); }
        return;
    }
    if (orig_ad_start) orig_ad_start(t, type, m);
}
static void hk_ad_banner(void* t, const MethodInfo* m) {
    ad_trace("ShowBanner", -1);
    if (g_noAds) return;                       // no banner
    if (orig_ad_showBanner) orig_ad_showBanner(t, m);
}
// R33: trace the rest of the class so we can see which path any ad actually takes
static void (*orig_ad_x_awake)(void*, const MethodInfo*) = NULL;
static void (*orig_ad_x_start)(void*, const MethodInfo*) = NULL;
static void (*orig_ad_x_upd)(void*, const MethodInfo*) = NULL;
static void (*orig_ad_x_reqRew)(void*, const MethodInfo*) = NULL;
static void (*orig_ad_x_reqInter)(void*, const MethodInfo*) = NULL;
static void (*orig_ad_x_reqUnlock)(void*, Il2CppObject*, const MethodInfo*) = NULL;
static void (*orig_ad_x_started)(void*, const MethodInfo*) = NULL;
static void hk_ad_x_awake(void* t, const MethodInfo* m)   { ad_trace("Awake", -1);   if (orig_ad_x_awake) orig_ad_x_awake(t, m); }
static void hk_ad_x_start(void* t, const MethodInfo* m)   { ad_trace("Start", -1);   if (orig_ad_x_start) orig_ad_x_start(t, m); }
static void hk_ad_x_started(void* t, const MethodInfo* m) { ad_trace("Started", -1); if (orig_ad_x_started) orig_ad_x_started(t, m); }
static void hk_ad_x_upd(void* t, const MethodInfo* m)     { if (orig_ad_x_upd) orig_ad_x_upd(t, m); }
static void hk_ad_x_reqRew(void* t, const MethodInfo* m)  { ad_trace("ReqReward", -1); if (orig_ad_x_reqRew) orig_ad_x_reqRew(t, m); }
static void hk_ad_x_reqInter(void* t, const MethodInfo* m){ ad_trace("ReqInter", -1);  if (orig_ad_x_reqInter) orig_ad_x_reqInter(t, m); }
static void hk_ad_x_reqUnlock(void* t, Il2CppObject* id, const MethodInfo* m) { ad_trace("ReqUnlockAd", -1); if (orig_ad_x_reqUnlock) orig_ad_x_reqUnlock(t, id, m); }

// R34: bottom of Unity's JNI bridge — drop Java-side "show the ad" calls entirely.
// Il2CppString layout: +0x10 = int length, +0x14 = UTF-16 chars.
static void* (*orig_ajo_call)(void*, Il2CppObject*, Il2CppObject*, const MethodInfo*) = NULL;
static void* (*orig_ajo_callstatic)(void*, Il2CppObject*, Il2CppObject*, const MethodInfo*) = NULL;

static bool jni_name_has(Il2CppObject* s, const char* needle) {
    if (!s) return false;
    int len = 0;
    memcpy(&len, (char*)s + 0x10, 4);
    if (len <= 0 || len > 200) return false;
    char buf[256];
    int n = (len < 200 ? len : 200);
    for (int i = 0; i < n; i++) {
        uint16_t c = 0;
        memcpy(&c, (char*)s + 0x14 + i * 2, 2);
        buf[i] = (c < 128) ? (char)((c >= 'A' && c <= 'Z') ? (c + 32) : c) : '?';
    }
    buf[n] = 0;
    return strstr(buf, needle) != NULL;
}
// ad-show method names we refuse to forward (lowercased substrings)
static bool jni_is_ad_show(Il2CppObject* name) {
    static const char* bad[] = {"showinterstitial", "interstitial_show", "showad", "show_ad",
                                "showrewarded", "showreward", "rewardedad_show", "showbanner",
                                "show_ads", "showads"};
    for (unsigned i = 0; i < sizeof(bad) / sizeof(bad[0]); i++)
        if (jni_name_has(name, bad[i])) return true;
    // generic show(): only when the surrounding name hints at ads
    if (jni_name_has(name, "show") && (jni_name_has(name, "ad") || jni_name_has(name, "max")))
        return true;
    return false;
}
static void* hk_ajo_call(void* self, Il2CppObject* name, Il2CppObject* args, const MethodInfo* m) {
    if (g_noAds && jni_is_ad_show(name)) {
        if (jni_name_has(name, "interstitial") || jni_name_has(name, "reward") || jni_name_has(name, "banner"))
            ad_trace("JNI_Call_DROPPED", -1);
        return NULL;
    }
    if (jni_name_has(name, "interstitial") || jni_name_has(name, "reward") || jni_name_has(name, "banner"))
        ad_trace("JNI_Call", -1);
    return orig_ajo_call ? orig_ajo_call(self, name, args, m) : NULL;
}
static void* hk_ajo_callstatic(void* self, Il2CppObject* name, Il2CppObject* args, const MethodInfo* m) {
    if (g_noAds && jni_is_ad_show(name)) {
        if (jni_name_has(name, "interstitial") || jni_name_has(name, "reward") || jni_name_has(name, "banner"))
            ad_trace("JNI_CallStatic_DROPPED", -1);
        return NULL;
    }
    if (jni_name_has(name, "interstitial") || jni_name_has(name, "reward") || jni_name_has(name, "banner"))
        ad_trace("JNI_CallStatic", -1);
    return orig_ajo_callstatic ? orig_ajo_callstatic(self, name, args, m) : NULL;
}

// ---------------- GLES replay (render thread) ----------------
static GLuint g_prog = 0, g_vb = 0, g_vao = 0; static GLint g_uRes = 0, g_uCol = 0, g_uK = -1;
typedef void (*fn_glGenVertexArrays)(GLsizei, GLuint*);
typedef void (*fn_glBindVertexArray)(GLuint);
static fn_glGenVertexArrays p_genVAO = NULL;
static fn_glBindVertexArray p_bindVAO = NULL;
static int g_surfW = 0, g_surfH = 0;   // real EGL surface size (Screen.width may be a render target)
static const char* VS =
    "attribute vec2 p;uniform vec2 r;uniform vec2 k;void main(){vec2 c=(p*k)/r*2.0-1.0;gl_Position=vec4(c.x,c.y,0.,1.);}";
static const char* FS = "precision mediump float;uniform vec4 c;void main(){gl_FragColor=c;}";
static GLuint mk(GLenum t, const char* s) {
    GLuint h = glCreateShader(t); glShaderSource(h, 1, &s, 0); glCompileShader(h); return h;
}
static int g_gl_tried = 0;
static void gl_init() {
    if (g_gl_tried) return;              // never loop on shader compiles (render stalls)
    g_gl_tried = 1;
    g_prog = glCreateProgram();
    glAttachShader(g_prog, mk(GL_VERTEX_SHADER, VS));
    glAttachShader(g_prog, mk(GL_FRAGMENT_SHADER, FS));
    glBindAttribLocation(g_prog, 0, "p");
    glLinkProgram(g_prog);
    GLint ok = 0; glGetProgramiv(g_prog, GL_LINK_STATUS, &ok);
    if (!ok) { LOGI("gl program link FAILED"); g_prog = 0; return; }
    g_uRes = glGetUniformLocation(g_prog, "r");
    g_uCol = glGetUniformLocation(g_prog, "c");
    g_uK   = glGetUniformLocation(g_prog, "k");
    glGenBuffers(1, &g_vb);
    {
        void* g3 = dlopen("libGLESv2.so", RTLD_NOW);
        if (g3) {
            p_genVAO  = (fn_glGenVertexArrays)dlsym(g3, "glGenVertexArrays");
            p_bindVAO = (fn_glBindVertexArray)dlsym(g3, "glBindVertexArray");
        }
        if (p_genVAO && p_bindVAO) { p_genVAO(1, &g_vao); }
    }
    LOGI("gl inited prog=%u ures=%d ucol=%d uK=%d vao=%u genVAO=%p bindVAO=%p",
         g_prog, g_uRes, g_uCol, (int)g_uK, g_vao, (void*)p_genVAO, (void*)p_bindVAO);
}

// Batched replay: group the cached segments by colour so the whole overlay costs at
// most 4 glDrawArrays per frame (was 400 -> that alone could stall the render thread).
#define MAXBATCH 512          // vertices per colour bucket
static float g_batch[7][MAXBATCH * 2];   // R22: +1 bucket for "body-only" orange
static int   g_batchN[7];

static void replay_draw() {
    if (!g_prog) return;
    static DrawCmd local[400];
    int n;
    if (pthread_mutex_trylock(&g_drawLock) != 0) return;   // main busy: skip frame
    n = g_drawCount > 400 ? 400 : g_drawCount;
    memcpy(local, g_draw, sizeof(DrawCmd) * n);
    pthread_mutex_unlock(&g_drawLock);
    if (n <= 0) { g_drawn = 0; return; }

    for (int c = 0; c < 7; c++) g_batchN[c] = 0;
    // colour buckets: 0=green 1=red(can hit head) 2=cyan 3=yellow 4=gray(blocked) 5=white(loot) 6=orange(body only)
    for (int i = 0; i < n; i++) {
        DrawCmd& d = local[i];
        int bucket;
        if (d.col[0] > 0.95f && d.col[1] > 0.35f && d.col[1] < 0.7f && d.col[2] < 0.25f) bucket = 6; // orange: body-only
        else if (d.col[0] > 0.85f && d.col[1] > 0.85f && d.col[2] > 0.85f) bucket = 5; // white loot
        else if (fabsf(d.col[0]-d.col[1]) < 0.06f && fabsf(d.col[1]-d.col[2]) < 0.06f) bucket = 4; // gray
        else if (d.col[0] > 0.9f && d.col[1] < 0.3f) bucket = 1;    // red
        else if (d.col[1] > 0.9f && d.col[2] > 0.9f) bucket = 2;    // cyan
        else if (d.col[0] > 0.9f && d.col[1] > 0.5f) bucket = 3;    // yellow
        else bucket = 0;                                            // green
        int room = MAXBATCH - g_batchN[bucket];
        int verts = d.n < room ? d.n : room;
        if (verts >= 2) {
            memcpy(&g_batch[bucket][g_batchN[bucket] * 2], d.pts, verts * 2 * sizeof(float));
            g_batchN[bucket] += verts;
        }
    }
    static const float COL[7][3] = {{0,1,0},{1,0.15f,0.15f},{0,1,1},{1,0.85f,0},{0.45f,0.45f,0.45f},{0.92f,0.92f,0.92f},{1.f,0.5f,0.f}};

    glUseProgram(g_prog);
    if (p_bindVAO) p_bindVAO(g_vao);   // R15i: attributes live in the VAO under GLES3
    int rw = g_surfW > 0 ? g_surfW : g_sw, rh = g_surfH > 0 ? g_surfH : g_sh;
    glUniform2f(g_uRes, (float)rw, (float)rh);
    if (g_uK >= 0) glUniform2f(g_uK,
        (float)rw / (float)(g_sw > 0 ? g_sw : rw),
        (float)rh / (float)(g_sh > 0 ? g_sh : rh));
    glBindBuffer(GL_ARRAY_BUFFER, g_vb);
    glEnableVertexAttribArray(0);
    g_drawn = 0;
    for (int c = 0; c < 7; c++) {
        if (g_batchN[c] < 2) continue;
        glUniform4f(g_uCol, COL[c][0], COL[c][1], COL[c][2], 1.f);
        glBufferData(GL_ARRAY_BUFFER, g_batchN[c] * 2 * sizeof(float), g_batch[c], GL_DYNAMIC_DRAW);
        glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 0, 0);
        glDrawArrays(GL_LINES, 0, g_batchN[c]);
        g_drawn += g_batchN[c] / 2;
    }
    glDisableVertexAttribArray(0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glUseProgram(0);
}

typedef EGLBoolean (*swap_t)(EGLDisplay, EGLSurface);
static swap_t orig_swap = NULL;
typedef EGLBoolean (*qs_t)(EGLDisplay, EGLSurface, EGLint, EGLint*);
static qs_t p_qsurf = NULL;   // eglQuerySurface: real surface size (R15e)
typedef EGLBoolean (*mkcur_t)(EGLDisplay, EGLSurface, EGLSurface, EGLContext);
typedef EGLContext (*curctx_t)(void);
static mkcur_t p_mkcur = NULL;
static curctx_t p_curctx = NULL;

// ---- GL state guard: the GPU pipeline is shared with Unity; anything we touch
// ---- must be restored or the game's own UI/text rendering comes out corrupted.
struct GLState {
    GLint prog, abuf, eabuf, viewport[4], atex, bsrc, bdst, tex2d, fbo, rbo;
    GLboolean blend, depth, cull, scissor, attr0, cmask[4], dmask;
    // S6 fix: attrib0 pointer/size/type/stride (was enable-only -> game VAO corruption)
    GLint a0size, a0type, a0stride, a0norm; void* a0ptr;
    GLint beqRGB, beqA; // R3 fix: blend equation (game effects e.g. MIN/MAX)
};
static void gl_save(GLState& s) {
    glGetIntegerv(GL_CURRENT_PROGRAM, &s.prog);
    glGetIntegerv(GL_ARRAY_BUFFER_BINDING, &s.abuf);
    glGetIntegerv(GL_ELEMENT_ARRAY_BUFFER_BINDING, &s.eabuf);
    glGetIntegerv(GL_VIEWPORT, s.viewport);
    glGetIntegerv(GL_ACTIVE_TEXTURE, &s.atex);
    glGetIntegerv(GL_BLEND_SRC_ALPHA, &s.bsrc);
    glGetIntegerv(GL_BLEND_DST_ALPHA, &s.bdst);
    glGetIntegerv(GL_TEXTURE_BINDING_2D, &s.tex2d);
    glGetIntegerv(GL_FRAMEBUFFER_BINDING, &s.fbo);
    glGetIntegerv(GL_RENDERBUFFER_BINDING, &s.rbo);
    s.blend = glIsEnabled(GL_BLEND);
    s.depth = glIsEnabled(GL_DEPTH_TEST);
    s.cull  = glIsEnabled(GL_CULL_FACE);
    s.scissor = glIsEnabled(GL_SCISSOR_TEST);
    GLint e = 0;
    glGetVertexAttribiv(0, GL_VERTEX_ATTRIB_ARRAY_ENABLED, &e);
    s.attr0 = e ? GL_TRUE : GL_FALSE;
    glGetVertexAttribiv(0, GL_VERTEX_ATTRIB_ARRAY_SIZE, &s.a0size);
    glGetVertexAttribiv(0, GL_VERTEX_ATTRIB_ARRAY_TYPE, &s.a0type);
    glGetVertexAttribiv(0, GL_VERTEX_ATTRIB_ARRAY_STRIDE, &s.a0stride);
    glGetVertexAttribiv(0, GL_VERTEX_ATTRIB_ARRAY_NORMALIZED, &s.a0norm);
    glGetVertexAttribPointerv(0, GL_VERTEX_ATTRIB_ARRAY_POINTER, &s.a0ptr);
    glGetIntegerv(GL_BLEND_EQUATION_RGB, &s.beqRGB);
    glGetIntegerv(GL_BLEND_EQUATION_ALPHA, &s.beqA);
    glGetBooleanv(GL_COLOR_WRITEMASK, s.cmask);
    glGetBooleanv(GL_DEPTH_WRITEMASK, &s.dmask);
}
static void gl_restore(const GLState& s) {
    glUseProgram(s.prog);
    glBindBuffer(GL_ARRAY_BUFFER, s.abuf);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, s.eabuf);
    glViewport(s.viewport[0], s.viewport[1], s.viewport[2], s.viewport[3]);
    glActiveTexture(s.atex);
    glBindTexture(GL_TEXTURE_2D, s.tex2d);
    glBindFramebuffer(GL_FRAMEBUFFER, s.fbo);
    glBindRenderbuffer(GL_RENDERBUFFER, s.rbo);
    glBlendFunc(s.bsrc, s.bdst);
    glBlendEquationSeparate(s.beqRGB, s.beqA); // R3 fix
    glColorMask(s.cmask[0], s.cmask[1], s.cmask[2], s.cmask[3]);
    glDepthMask(s.dmask);
    if (s.blend) glEnable(GL_BLEND); else glDisable(GL_BLEND);
    if (s.depth) glEnable(GL_DEPTH_TEST); else glDisable(GL_DEPTH_TEST);
    if (s.cull)  glEnable(GL_CULL_FACE);  else glDisable(GL_CULL_FACE);
    if (s.scissor) glEnable(GL_SCISSOR_TEST); else glDisable(GL_SCISSOR_TEST);
    if (s.attr0) glEnableVertexAttribArray(0); else glDisableVertexAttribArray(0);
    // S6 fix: restore game's attrib0 layout (size/type/normalized/stride/pointer)
    glBindBuffer(GL_ARRAY_BUFFER, s.abuf);
    glVertexAttribPointer(0, s.a0size ? s.a0size : 4, s.a0type ? s.a0type : GL_FLOAT, s.a0norm ? GL_TRUE : GL_FALSE, s.a0stride, s.a0ptr);
}

static EGLBoolean hk_swap(EGLDisplay d, EGLSurface s) {
    if (!orig_swap) return EGL_FALSE;
    g_swap_calls++;
    // Render thread: NO il2cpp calls here. Screen size + draw list are produced on the
    // main thread; this only replays cached vertices inside a GL state sandwich.
    if (g_drawCount > 0 && g_sw > 0 && g_sh > 0) {
        if (p_qsurf) {   // R15e: the real surface is not always Screen.width x Screen.height
            EGLint w = 0, h = 0;
            if (p_qsurf(d, s, EGL_WIDTH, &w) == EGL_TRUE && p_qsurf(d, s, EGL_HEIGHT, &h) == EGL_TRUE && w > 0 && h > 0) {
                g_surfW = (int)w; g_surfH = (int)h;
            }
        }
        // R18: guarantee our draw targets the surface being presented, on the default framebuffer
        if (p_mkcur && p_curctx) {
            EGLContext ctx = p_curctx();
            if (ctx) {
                static int mkLogged = 0;
                EGLBoolean okc = p_mkcur(d, s, s, ctx);
                if (!mkLogged) { mkLogged = 1; LOGI("makeCurrent(d,s,s,ctx) -> %d", (int)okc); }
            }
        }
        glBindFramebuffer(GL_FRAMEBUFFER, 0);
        GLState st;
        gl_save(st);
        glDisable(GL_DEPTH_TEST);
        glDisable(GL_CULL_FACE);
        glDisable(GL_SCISSOR_TEST);
        glEnable(GL_BLEND);
        glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
        glDepthMask(GL_FALSE);
        glViewport(0, 0, (g_surfW > 0 ? g_surfW : g_sw), (g_surfH > 0 ? g_surfH : g_sh));
        if (!g_prog) gl_init();
        replay_draw();
        {
            static long long lastSL = 0;
            long long nowSL = now_ms();
            if (nowSL - lastSL > 3000) {
                lastSL = nowSL;
                LOGI("surface screen=%dx%d surf=%dx%d k=(%.3f,%.3f) uK=%d qs=%p",
                     g_sw, g_sh, g_surfW, g_surfH,
                     (double)((float)(g_surfW > 0 ? g_surfW : g_sw) / (float)(g_sw > 0 ? g_sw : 1)),
                     (double)((float)(g_surfH > 0 ? g_surfH : g_sh) / (float)(g_sh > 0 ? g_sh : 1)),
                     (int)g_uK, (void*)p_qsurf);
                // readback probes: marker is a filled magenta square at game y=100..400 + line y=700.
                // With k applied it lands at surface (100k .. 400k); probe the interior of that box.
                LOGI("scalecheck screen=%dx%d surf=%dx%d k=(%.3f,%.3f) uK=%d vao=%u",
                     g_sw, g_sh, g_surfW, g_surfH,
                     (double)((float)(g_surfW > 0 ? g_surfW : g_sw) / (float)(g_sw > 0 ? g_sw : 1)),
                     (double)((float)(g_surfH > 0 ? g_surfH : g_sh) / (float)(g_sh > 0 ? g_sh : 1)),
                     (int)g_uK, g_vao);
            }
        }
        gl_restore(st);
    } else {
        g_drawn = 0;   // no stale boxes: parachute frames must not freeze on screen
    }
    return orig_swap(d, s);
}
// ------------------- JNI bridge -------------------
extern "C" {
JNIEXPORT void JNICALL Java_com_android_support_ModBridge_nativeOnBool(JNIEnv* env, jclass, jstring jn, jboolean v) {
    if (!jn) return;
    const char* n = env->GetStringUTFChars(jn, 0);
    if (!n) return;
    if (strstr(n, "ESP Box"))        g_espBox  = v;
    else if (strstr(n, "Skeleton"))  g_skeleton = v;
    else if (strstr(n, "Item ESP"))  g_itemEsp = v;
    else if (strstr(n, "Silent"))    { g_silent  = v; if (v) ensure_shoot_hook(); }
    else if (strstr(n, "Aimbot"))    { g_aimbot  = v; if (v) ensure_shoot_hook(); }
    env->ReleaseStringUTFChars(jn, n);
}
JNIEXPORT void JNICALL Java_com_android_support_ModBridge_nativeOnInt(JNIEnv* env, jclass, jstring jn, jint v) {
    if (!jn) return;
    const char* n = env->GetStringUTFChars(jn, 0);
    if (!n) return;
    if (strstr(n, "Aim FOV"))          g_aimFovPx = v;
    else if (strstr(n, "Aim Smooth"))  g_aimSmooth = v;
    else if (strstr(n, "Max Dist"))    g_maxDist = v;
    else if (strstr(n, "Aim Pitch Trim")) g_aimPitchTrim = v;   // R28
    else if (strstr(n, "No Ads")) g_noAds = v;                  // R32
    env->ReleaseStringUTFChars(jn, n);
}
JNIEXPORT jobjectArray JNICALL Java_com_android_support_ModBridge_nativeGetFeatures(JNIEnv* env, jclass) {
    const char* f[] = {
        // pack entry format: "<index>_<Type>_<Display Name>[_min_max]"
        // indices 101+: the pack already owns 1..9 — duplicate indices collide in Menu parsing
        "Category_SUBR ESP",
        "101_Toggle_ESP Box",
        "102_Toggle_Skeleton",
        "103_Toggle_Item ESP",
        "104_Toggle_Aimbot",
        "105_Toggle_Silent Aim",
        "106_SeekBar_Aim FOV_40_400",
        "107_SeekBar_Aim Smooth_1_20",
        "108_SeekBar_Max Dist_50_600",
        "109_SeekBar_Aim Pitch Trim_-20_20",
        "110_Toggle_No Ads",
    };
    int n = sizeof(f) / sizeof(f[0]);
    jclass sc = env->FindClass("java/lang/String");
    jobjectArray a = env->NewObjectArray(n, sc, 0);
    for (int i = 0; i < n; i++) env->SetObjectArrayElement(a, i, env->NewStringUTF(f[i]));
    return a;
}
}

// ---------------- bootstrap ----------------
static void* il2cpp_off2addr(uintptr_t file_off) {
    struct Ctx { uintptr_t off; void* out; } ctx{file_off, NULL};
    struct W {
        static int cb(struct dl_phdr_info* info, size_t, void* d) {
            Ctx* c = (Ctx*)d;
            if (!info->dlpi_name || !strstr(info->dlpi_name, "libil2cpp.so")) return 0;
            for (int i = 0; i < info->dlpi_phnum; i++) {
                const Elf64_Phdr* ph = (const Elf64_Phdr*)((char*)&info->dlpi_phdr[i]);
                if (ph->p_type != PT_LOAD) continue;
                if (c->off >= ph->p_offset && c->off < ph->p_offset + ph->p_filesz) {
                    c->out = (void*)(info->dlpi_addr + ph->p_vaddr + (c->off - ph->p_offset));
                    return 1;
                }
            }
            return 0;
        }
    };
    dl_iterate_phdr(W::cb, &ctx);
    return ctx.out;
}

static void (*p_A64Hook)(void*, void*, void**) = NULL;
static volatile int g_shoot_hooked = 0;
// install the silent-aim hook on demand (avoid touching weapon functions unless used)
static void ensure_shoot_hook(void) {
    if (g_shoot_hooked || !p_A64Hook) return;
    g_shoot_hooked = 1;
    void* t = il2cpp_off2addr(0x0D39EEC);
    if (t) { p_A64Hook(t, (void*)hk_shoot, (void**)&orig_shoot); LOGI("LAZY HOOK ShootByScript @%p orig=%p", t, (void*)orig_shoot); }
    else LOGI("LAZY HOOK ShootByScript resolve FAIL");
    void* t2 = il2cpp_off2addr(0x0D39FB8);   // R21: ShootBehaviour.Shooting (other fire entry)
    if (t2) { p_A64Hook(t2, (void*)hk_shoot2, (void**)&orig_shoot2); LOGI("LAZY HOOK Shooting @%p orig=%p", t2, (void*)orig_shoot2); }
    else LOGI("LAZY HOOK Shooting resolve FAIL");
}

static void hook_or_log(const char* name, void* target, void* repl, void** orig) {
    if (!target) { LOGI("MISS %s", name); return; }
    p_A64Hook(target, repl, orig);
    LOGI("HOOK %s @%p orig=%p", name, target, orig ? *orig : NULL);
}

static void* hack_thread(void*) {
    // wait for libil2cpp to be mapped
    void* h = NULL;
    for (int i = 0; i < 300 && !h; i++) { h = dlopen("libil2cpp.so", RTLD_NOW); if (!h) usleep(200000); }
    if (!h) { LOGI("libil2cpp not loaded"); return 0; }
    p_resolve_icall = (decltype(p_resolve_icall))dlsym(h, "il2cpp_resolve_icall");
    p_class_get_image = (decltype(p_class_get_image))dlsym(h, "il2cpp_class_get_image");
    p_class_get_type  = (decltype(p_class_get_type))dlsym(h, "il2cpp_class_get_type");
    p_type_get_object = (decltype(p_type_get_object))dlsym(h, "il2cpp_type_get_object");
    p_class_from_name = (decltype(p_class_from_name))dlsym(h, "il2cpp_class_from_name");
    p_img_class_count = (decltype(p_img_class_count))dlsym(h, "il2cpp_image_get_class_count");
    p_img_get_class = (decltype(p_img_get_class))dlsym(h, "il2cpp_image_get_class");
    p_class_get_name = (decltype(p_class_get_name))dlsym(h, "il2cpp_class_get_name");
    p_string_new = (decltype(p_string_new))dlsym(h, "il2cpp_string_new");
    p_class_get_method_from_name = (decltype(p_class_get_method_from_name))dlsym(h, "il2cpp_class_get_method_from_name");
    p_runtime_invoke = (decltype(p_runtime_invoke))dlsym(h, "il2cpp_runtime_invoke");
    struct sigaction sa; memset(&sa, 0, sizeof(sa));
    sa.sa_sigaction = sev_handler;
    sa.sa_flags = SA_SIGINFO | SA_RESTART;
    sigaction(SIGSEGV, &sa, NULL);
    p_domain_get = (decltype(p_domain_get))dlsym(h, "il2cpp_domain_get");
    p_thread_attach = (decltype(p_thread_attach))dlsym(h, "il2cpp_thread_attach");
    p_gchandle_new = (decltype(p_gchandle_new))dlsym(h, "il2cpp_gchandle_new");
    p_gchandle_free = (decltype(p_gchandle_free))dlsym(h, "il2cpp_gchandle_free");
    p_gchandle_target = (decltype(p_gchandle_target))dlsym(h, "il2cpp_gchandle_get_target");
    LOGI("resolve_icall=%p gchandle=%p/%p/%p", (void*)p_resolve_icall,
         (void*)p_gchandle_new, (void*)p_gchandle_free, (void*)p_gchandle_target);

    void* hm = NULL;
    for (int i = 0; i < 30 && !p_A64Hook; i++) {
        hm = dlopen("libMyLibName.so", RTLD_NOW);
        if (hm) p_A64Hook = (decltype(p_A64Hook))dlsym(hm, "A64HookFunction");
        if (!p_A64Hook) usleep(200000);
    }
    if (!p_A64Hook) { LOGI("no hook engine"); return 0; }

    // Minimal, conflict-safe hook set. The pack's own native menu already hooks
    // gameplay functions for its features (unlimited ammo/health/no-recoil/speed),
    // so we stay off those and only take:
    //   * GameController::Update          -> our 10 Hz driver heartbeat
    //   * MainMenuV8::Update              -> menu-stage heartbeat
    //   * Zombie/AI/PickableItem::Update  -> register-only entity collection
    // ShootByScript (silent aim) is installed lazily, only when that toggle is ON.
    hook_or_log("GC::Update",       il2cpp_off2addr(0x0CD6544), (void*)hk_gc,   (void**)&orig_gc);
    hook_or_log("PHM::Start",       il2cpp_off2addr(0x1AA4F28), (void*)hk_phm_start, (void**)&orig_phm_start);
    hook_or_log("ZombieEnemyAI::Update", il2cpp_off2addr(0x0B367A0), (void*)hk_zen, (void**)&orig_zen);
    hook_or_log("EnemyAIBoss::Update",   il2cpp_off2addr(0x0CE9A84), (void*)hk_boss,(void**)&orig_boss);
    hook_or_log("MonsterEnemy::Update",  il2cpp_off2addr(0x09BA7E8), (void*)hk_mon, (void**)&orig_mon);
    hook_or_log("AIController::Update",  il2cpp_off2addr(0x16AD950), (void*)hk_ai,  (void**)&orig_ai);
    hook_or_log("PickableItem::Update",  il2cpp_off2addr(0x1A9F098), (void*)hk_item,(void**)&orig_item);
    hook_or_log("MainMenuV8::Update",    il2cpp_off2addr(0x0B29E0C), (void*)hk_menu, (void**)&orig_menu);
    hook_or_log("OrbitCam::LateUpdate",  il2cpp_off2addr(0x1301FF0), (void*)hk_orb_late, (void**)&orig_orb_late);  // R31
    // R32: ads
    hook_or_log("ad::InterstitialClosed", il2cpp_off2addr(0x0B38D7C), (void*)hk_ad_iclose, (void**)&orig_ad_iclose);
    hook_or_log("ad::RewardAdClosed",     il2cpp_off2addr(0x0B39308), (void*)hk_ad_rclose, (void**)&orig_ad_rclose);
    hook_or_log("ad::CompleteMethod",     il2cpp_off2addr(0x0B3895C), (void*)hk_ad_complete, (void**)&orig_ad_complete);
    hook_or_log("ad::ShowInterstitial",   il2cpp_off2addr(0x0B39020), (void*)hk_ad_showInter, (void**)&orig_ad_showInter);
    hook_or_log("ad::ShowCustomInter",    il2cpp_off2addr(0x0B390C8), (void*)hk_ad_showCust, (void**)&orig_ad_showCust);
    hook_or_log("ad::ShowRewerdVideo",    il2cpp_off2addr(0x0B38F34), (void*)hk_ad_showRew, (void**)&orig_ad_showRew);
    hook_or_log("ad::StartAd",            il2cpp_off2addr(0x0B38E44), (void*)hk_ad_start, (void**)&orig_ad_start);
    hook_or_log("ad::ShowBanner",         il2cpp_off2addr(0x0B38C9C), (void*)hk_ad_banner, (void**)&orig_ad_showBanner);
    hook_or_log("ad::Awake",              il2cpp_off2addr(0x0B3878C), (void*)hk_ad_x_awake, (void**)&orig_ad_x_awake);
    hook_or_log("ad::Start",              il2cpp_off2addr(0x0B387DC), (void*)hk_ad_x_start, (void**)&orig_ad_x_start);
    hook_or_log("ad::Started",            il2cpp_off2addr(0x0B38AD4), (void*)hk_ad_x_started, (void**)&orig_ad_x_started);
    hook_or_log("ad::Update",             il2cpp_off2addr(0x0B388E8), (void*)hk_ad_x_upd, (void**)&orig_ad_x_upd);
    hook_or_log("ad::ReqReward",          il2cpp_off2addr(0x0B391B4), (void*)hk_ad_x_reqRew, (void**)&orig_ad_x_reqRew);
    hook_or_log("ad::ReqInter",           il2cpp_off2addr(0x0B3925C), (void*)hk_ad_x_reqInter, (void**)&orig_ad_x_reqInter);
    hook_or_log("ad::ReqUnlockAd",        il2cpp_off2addr(0x0B38DA4), (void*)hk_ad_x_reqUnlock, (void**)&orig_ad_x_reqUnlock);
    hook_or_log("ajo::_Call",             il2cpp_off2addr(0x19EEE1C), (void*)hk_ajo_call, (void**)&orig_ajo_call);
    hook_or_log("ajo::_CallStatic",       il2cpp_off2addr(0x19EEF30), (void*)hk_ajo_callstatic, (void**)&orig_ajo_callstatic);

    void* hegl = dlopen("libEGL.so", RTLD_NOW);
    if (hegl) p_qsurf = (decltype(p_qsurf))dlsym(hegl, "eglQuerySurface");
    if (hegl) {
        p_mkcur  = (decltype(p_mkcur))dlsym(hegl, "eglMakeCurrent");
        p_curctx = (decltype(p_curctx))dlsym(hegl, "eglGetCurrentContext");
    }
    LOGI("eglQuerySurface=%p", (void*)p_qsurf);
    void* sw = hegl ? dlsym(hegl, "eglSwapBuffers") : NULL;
    if (sw) { p_A64Hook(sw, (void*)hk_swap, (void**)&orig_swap); LOGI("HOOK eglSwapBuffers @%p", sw); }
    else LOGI("MISS eglSwapBuffers");
    LOGI("bootstrap done");
    return 0;
}

jint JNI_OnLoad(JavaVM*, void*) {
    LOGI("JNI_OnLoad");
    pthread_t t; pthread_create(&t, 0, hack_thread, 0);
    return JNI_VERSION_1_6;
}
