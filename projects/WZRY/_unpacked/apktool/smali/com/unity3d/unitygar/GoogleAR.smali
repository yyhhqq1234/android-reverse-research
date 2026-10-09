.class public Lcom/unity3d/unitygar/GoogleAR;
.super Ljava/lang/Object;
.source "GoogleAR.java"


# instance fields
.field m_activity:Landroid/app/Activity;

.field m_tango:Lcom/google/atap/tangoservice/Tango;

.field private m_tangoCallback:Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

.field private m_tangoServiceBound:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/unity3d/unitygar/GoogleAR;->m_tango:Lcom/google/atap/tangoservice/Tango;

    .line 16
    iput-object v0, p0, Lcom/unity3d/unitygar/GoogleAR;->m_activity:Landroid/app/Activity;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/unitygar/GoogleAR;->m_tangoServiceBound:Z

    .line 19
    new-instance v0, Lcom/unity3d/unitygar/GoogleAR$1;

    invoke-direct {v0, p0}, Lcom/unity3d/unitygar/GoogleAR$1;-><init>(Lcom/unity3d/unitygar/GoogleAR;)V

    iput-object v0, p0, Lcom/unity3d/unitygar/GoogleAR;->m_tangoCallback:Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/unitygar/GoogleAR;Lcom/google/atap/tangoservice/TangoPoseData;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/unitygar/GoogleAR;
    .param p1, "x1"    # Lcom/google/atap/tangoservice/TangoPoseData;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/unity3d/unitygar/GoogleAR;->tangoOnPoseAvailable(Lcom/google/atap/tangoservice/TangoPoseData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/unity3d/unitygar/GoogleAR;I)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/unitygar/GoogleAR;
    .param p1, "x1"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/unity3d/unitygar/GoogleAR;->tangoOnTextureAvailable(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/unity3d/unitygar/GoogleAR;Lcom/google/atap/tangoservice/TangoEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/unitygar/GoogleAR;
    .param p1, "x1"    # Lcom/google/atap/tangoservice/TangoEvent;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/unity3d/unitygar/GoogleAR;->tangoOnTangoEvent(Lcom/google/atap/tangoservice/TangoEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/unity3d/unitygar/GoogleAR;Lcom/google/atap/tangoservice/TangoPointCloudData;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/unitygar/GoogleAR;
    .param p1, "x1"    # Lcom/google/atap/tangoservice/TangoPointCloudData;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/unity3d/unitygar/GoogleAR;->tangoOnPointCloudAvailable(Lcom/google/atap/tangoservice/TangoPointCloudData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/unity3d/unitygar/GoogleAR;Lcom/google/atap/tangoservice/TangoImage;Lcom/google/atap/tangoservice/TangoCameraMetadata;I)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/unitygar/GoogleAR;
    .param p1, "x1"    # Lcom/google/atap/tangoservice/TangoImage;
    .param p2, "x2"    # Lcom/google/atap/tangoservice/TangoCameraMetadata;
    .param p3, "x3"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/unitygar/GoogleAR;->tangoOnImageAvailable(Lcom/google/atap/tangoservice/TangoImage;Lcom/google/atap/tangoservice/TangoCameraMetadata;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/unity3d/unitygar/GoogleAR;Lcom/google/atap/tangoservice/Tango;)V
    .locals 0
    .param p0, "x0"    # Lcom/unity3d/unitygar/GoogleAR;
    .param p1, "x1"    # Lcom/google/atap/tangoservice/Tango;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/unity3d/unitygar/GoogleAR;->tangoCacheTangoObject(Lcom/google/atap/tangoservice/Tango;)V

    return-void
.end method

.method private final native tangoCacheTangoObject(Lcom/google/atap/tangoservice/Tango;)V
.end method

.method private final native tangoOnCreate(Landroid/app/Activity;Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;)V
.end method

.method private final native tangoOnImageAvailable(Lcom/google/atap/tangoservice/TangoImage;Lcom/google/atap/tangoservice/TangoCameraMetadata;I)V
.end method

.method private final native tangoOnPause()V
.end method

.method private final native tangoOnPointCloudAvailable(Lcom/google/atap/tangoservice/TangoPointCloudData;)V
.end method

.method private final native tangoOnPoseAvailable(Lcom/google/atap/tangoservice/TangoPoseData;)V
.end method

.method private final native tangoOnTangoEvent(Lcom/google/atap/tangoservice/TangoEvent;)V
.end method

.method private final native tangoOnTextureAvailable(I)V
.end method


# virtual methods
.method public create()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/unity3d/unitygar/GoogleAR;->m_activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/unity3d/unitygar/GoogleAR;->m_tangoCallback:Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;

    invoke-direct {p0, v0, v1}, Lcom/unity3d/unitygar/GoogleAR;->tangoOnCreate(Landroid/app/Activity;Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;)V

    .line 61
    return-void
.end method

.method public getClassVersion()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/unity3d/unitygar/GoogleAR;->m_activity:Landroid/app/Activity;

    .line 56
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/unity3d/unitygar/GoogleAR;->m_tangoServiceBound:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/unity3d/unitygar/GoogleAR;->tangoOnPause()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/unitygar/GoogleAR;->m_tangoServiceBound:Z

    .line 70
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lcom/google/atap/tangoservice/Tango;

    iget-object v1, p0, Lcom/unity3d/unitygar/GoogleAR;->m_activity:Landroid/app/Activity;

    new-instance v2, Lcom/unity3d/unitygar/GoogleAR$2;

    invoke-direct {v2, p0}, Lcom/unity3d/unitygar/GoogleAR$2;-><init>(Lcom/unity3d/unitygar/GoogleAR;)V

    invoke-direct {v0, v1, v2}, Lcom/google/atap/tangoservice/Tango;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/unity3d/unitygar/GoogleAR;->m_tango:Lcom/google/atap/tangoservice/Tango;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/unitygar/GoogleAR;->m_tangoServiceBound:Z

    .line 81
    return-void
.end method
