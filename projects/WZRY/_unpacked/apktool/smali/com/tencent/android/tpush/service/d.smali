.class Lcom/tencent/android/tpush/service/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Lcom/tencent/android/tpush/service/a;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 296
    iput-object p1, p0, Lcom/tencent/android/tpush/service/d;->c:Lcom/tencent/android/tpush/service/a;

    iput-object p2, p0, Lcom/tencent/android/tpush/service/d;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/tencent/android/tpush/service/d;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 300
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClientReport;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClientReport;-><init>()V

    .line 301
    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClientReport;->commandId:I

    .line 302
    iget-object v1, p0, Lcom/tencent/android/tpush/service/d;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/android/tpush/service/e/h;->n(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClientReport;->signal:Ljava/lang/String;

    .line 304
    new-instance v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClientReportReq;

    invoke-direct {v1}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClientReportReq;-><init>()V

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClientReportReq;->reportMsgs:Ljava/util/ArrayList;

    .line 306
    iget-object v2, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsClientReportReq;->reportMsgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    new-instance v2, Lcom/tencent/android/tpush/service/e;

    invoke-direct {v2, p0}, Lcom/tencent/android/tpush/service/e;-><init>(Lcom/tencent/android/tpush/service/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 353
    return-void
.end method
