.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKSceneMethod.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

.field static cache_initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

.field static cache_releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

.field static cache_removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

.field static cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;


# instance fields
.field public addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

.field public initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

.field public releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

.field public removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

.field public setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->$assertionsDisabled:Z

    .line 180
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->cache_initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    .line 184
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->cache_releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    .line 188
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 192
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->cache_addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    .line 196
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->cache_removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 200
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->cache_screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    .line 201
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    .line 99
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    .line 100
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    .line 101
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 102
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    .line 103
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 104
    iput-object p6, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    .line 105
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKSceneMethod"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 141
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 147
    :cond_0
    return-object v0

    .line 143
    :catch_0
    move-exception v1

    .line 145
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 216
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    const-string v2, "initParameter"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 217
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    const-string v2, "releaseParameter"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 218
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const-string v2, "setInvisible"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 219
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    const-string v2, "addPage"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 220
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "removePageByID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 221
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    const-string v2, "screenShot"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 222
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 226
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 227
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 228
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 229
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 230
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 231
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 232
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 233
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 109
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;

    .line 115
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    .line 116
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    .line 117
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 118
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    .line 119
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 120
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    .line 121
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKSceneMethod"

    return-object v0
.end method

.method public getAddPage()Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    return-object v0
.end method

.method public getInitParameter()Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    return-object v0
.end method

.method public getReleaseParameter()Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    return-object v0
.end method

.method public getRemovePageByID()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getScreenShot()Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    return-object v0
.end method

.method public getSetInvisible()Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 128
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->cache_initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    .line 206
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->cache_releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    .line 207
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->cache_setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 208
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->cache_addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    .line 209
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->cache_removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 210
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->cache_screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    .line 211
    return-void
.end method

.method public setAddPage(Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    .line 71
    return-void
.end method

.method public setInitParameter(Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    .line 41
    return-void
.end method

.method public setReleaseParameter(Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    .line 51
    return-void
.end method

.method public setRemovePageByID(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 81
    return-void
.end method

.method public setScreenShot(Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    .line 91
    return-void
.end method

.method public setSetInvisible(Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    .line 61
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->initParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_init;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->releaseParameter:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_release;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->setInvisible:Lcom/tencent/friday/uikit/jce/UnityKit/UKBool;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->addPage:Lcom/tencent/friday/uikit/jce/UnityKit/UKPage;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->removePageByID:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod;->screenShot:Lcom/tencent/friday/uikit/jce/UnityKit/UKSceneMethod_screenShot;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 176
    :cond_5
    return-void
.end method
