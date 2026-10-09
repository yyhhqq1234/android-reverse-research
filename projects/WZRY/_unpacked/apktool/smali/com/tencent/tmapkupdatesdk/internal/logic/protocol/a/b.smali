.class public Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;
.super Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;
.source "ProGuard"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "UploadApkHttpRequest"

    sput-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;->b:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    .prologue
    .line 31
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;->a:Ljava/lang/String;

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-super {p0}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a;->a()V

    .line 33
    new-instance v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoRequest;

    invoke-direct {v1}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoRequest;-><init>()V

    .line 34
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;->b:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoRequest;->apkFileInfoList:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p0, v1}, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;->a(Lcom/qq/taf/jce/JceStruct;)V

    .line 37
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, "prepareData; apkFileInfoList= ["

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkgname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";apkId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->apkId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "| \n\r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 41
    :cond_0
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;->a:Ljava/lang/String;

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method protected a(Lcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;)V
    .locals 6

    .prologue
    .line 46
    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoResponse;

    if-eqz v0, :cond_1

    .line 47
    check-cast p2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoResponse;

    .line 48
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinished; ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoResponse;->ret:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget v0, p2, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoResponse;->ret:I

    if-nez v0, :cond_1

    .line 51
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 53
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 55
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;->a:Ljava/lang/String;

    const-string v1, "send Message ApkUpdateMessageHandler.UploadApkDetailSucceed"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    if-eqz p1, :cond_1

    .line 60
    check-cast p1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoRequest;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "reportedPackageNames = ["

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v0, p1, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ReportApkFileInfoRequest;->apkFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;

    .line 64
    iget-object v4, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkgname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/jce/ApkFileInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 70
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 71
    const/16 v2, 0x8

    iput v2, v0, Landroid/os/Message;->what:I

    .line 72
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 74
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;->a:Ljava/lang/String;

    const-string v1, "send Message ApkUpdateMessageHandler.UploadApkDetail"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->a()Lcom/tencent/tmapkupdatesdk/internal/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmapkupdatesdk/internal/logic/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 86
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 88
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 89
    sget-object v0, Lcom/tencent/tmapkupdatesdk/internal/logic/protocol/a/b;->a:Ljava/lang/String;

    const-string v1, "send Message ApkUpdateMessageHandler.UploadApkDetailFailed"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
