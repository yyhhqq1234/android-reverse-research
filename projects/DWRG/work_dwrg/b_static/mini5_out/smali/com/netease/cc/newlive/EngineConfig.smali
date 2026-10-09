.class public Lcom/netease/cc/newlive/EngineConfig;
.super Ljava/lang/Object;
.source "EngineConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/newlive/EngineConfig$Builder;
    }
.end annotation


# instance fields
.field private a:Landroid/opengl/GLSurfaceView;

.field private b:Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;

.field private c:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

.field private d:Ljava/lang/Object;

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/netease/cc/newlive/EngineConfig$Builder;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/netease/cc/newlive/EngineConfig$Builder;->a(Lcom/netease/cc/newlive/EngineConfig$Builder;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/newlive/EngineConfig;->a:Landroid/opengl/GLSurfaceView;

    .line 19
    invoke-static {p1}, Lcom/netease/cc/newlive/EngineConfig$Builder;->b(Lcom/netease/cc/newlive/EngineConfig$Builder;)Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/newlive/EngineConfig;->c:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    .line 20
    invoke-static {p1}, Lcom/netease/cc/newlive/EngineConfig$Builder;->c(Lcom/netease/cc/newlive/EngineConfig$Builder;)Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/newlive/EngineConfig;->b:Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;

    .line 21
    invoke-static {p1}, Lcom/netease/cc/newlive/EngineConfig$Builder;->d(Lcom/netease/cc/newlive/EngineConfig$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/cc/newlive/EngineConfig;->d:Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Lcom/netease/cc/newlive/EngineConfig$Builder;->e(Lcom/netease/cc/newlive/EngineConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/cc/newlive/EngineConfig;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/cc/newlive/EngineConfig$Builder;Lcom/netease/cc/newlive/EngineConfig$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/netease/cc/newlive/EngineConfig;-><init>(Lcom/netease/cc/newlive/EngineConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getCaptureMode()Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/netease/cc/newlive/EngineConfig;->c:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    return-object v0
.end method

.method public getTinkerContext()Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/netease/cc/newlive/EngineConfig;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrlType()Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/netease/cc/newlive/EngineConfig;->b:Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;

    return-object v0
.end method

.method public getView()Landroid/opengl/GLSurfaceView;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/netease/cc/newlive/EngineConfig;->a:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public isForceSysAudio()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/netease/cc/newlive/EngineConfig;->e:Z

    return v0
.end method

.method public setCaptureMode(Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/netease/cc/newlive/EngineConfig;->c:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    return-void
.end method

.method public setForceSysAudio(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/netease/cc/newlive/EngineConfig;->e:Z

    return-void
.end method

.method public setUrlType(Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/netease/cc/newlive/EngineConfig;->b:Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cc/newlive/EngineConfig;->c:Lcom/netease/cc/newlive/CCLiveConstants$CAPTURE_MODE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " urlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/cc/newlive/EngineConfig;->b:Lcom/netease/cc/newlive/CCLiveConstants$URL_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
