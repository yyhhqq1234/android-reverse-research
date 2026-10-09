.class public final Lcom/netease/cc/newlive/EngineConfig$Builder;
.super Ljava/lang/Object;
.source "EngineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/newlive/EngineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/opengl/GLSurfaceView;

.field private b:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

.field private c:Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;

.field private d:Ljava/lang/Object;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->a:Landroid/opengl/GLSurfaceView;

    .line 70
    sget-object v1, Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;->CAMERA_LIVE:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    iput-object v1, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->b:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    .line 71
    sget-object v1, Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;->CC:Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;

    iput-object v1, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->c:Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;

    .line 72
    iput-object v0, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/netease/cc/newlive/EngineConfig$Builder;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->a:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/cc/newlive/EngineConfig$Builder;)Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->b:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/cc/newlive/EngineConfig$Builder;)Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->c:Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/cc/newlive/EngineConfig$Builder;)Ljava/lang/Object;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/netease/cc/newlive/EngineConfig$Builder;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->e:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/netease/cc/newlive/EngineConfig;
    .locals 2

    .line 102
    new-instance v0, Lcom/netease/cc/newlive/EngineConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/cc/newlive/EngineConfig;-><init>(Lcom/netease/cc/newlive/EngineConfig$Builder;Lcom/netease/cc/newlive/EngineConfig$1;)V

    return-object v0
.end method

.method public captureMode(Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;)Lcom/netease/cc/newlive/EngineConfig$Builder;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->b:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    return-object p0
.end method

.method public forceSysAudio(Z)Lcom/netease/cc/newlive/EngineConfig$Builder;
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->e:Z

    return-object p0
.end method

.method public tinkContext(Ljava/lang/Object;)Lcom/netease/cc/newlive/EngineConfig$Builder;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public urlType(Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;)Lcom/netease/cc/newlive/EngineConfig$Builder;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->c:Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;

    return-object p0
.end method

.method public view(Landroid/opengl/GLSurfaceView;)Lcom/netease/cc/newlive/EngineConfig$Builder;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/netease/cc/newlive/EngineConfig$Builder;->a:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method
