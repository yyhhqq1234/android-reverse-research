.class final Lc/t/m/g/cx$a;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t/m/g/cx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private synthetic d:Lc/t/m/g/cx;


# direct methods
.method constructor <init>(Lc/t/m/g/cx;Landroid/os/Looper;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1225
    iput-object p1, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    .line 1226
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1221
    iput v0, p0, Lc/t/m/g/cx$a;->a:I

    .line 1222
    iput v0, p0, Lc/t/m/g/cx$a;->b:I

    .line 1223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/cx$a;->c:Z

    .line 1227
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/t/m/g/cx$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/t/m/g/cx$a;->c:Z

    .line 1232
    iput v1, p0, Lc/t/m/g/cx$a;->a:I

    .line 1233
    iput v1, p0, Lc/t/m/g/cx$a;->b:I

    .line 1234
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .prologue
    .line 1238
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1239
    :try_start_0
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->b(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1240
    monitor-exit v1

    .line 1606
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->b(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v7

    .line 1243
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->c(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v8

    .line 1245
    invoke-virtual {v8}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getRequestLevel()I

    move-result v1

    .line 1246
    invoke-virtual {v8}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v10

    .line 1247
    invoke-virtual {v8}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "daemon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1250
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1603
    :sswitch_0
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->C(Lc/t/m/g/cx;)Lc/t/m/g/dn;

    .line 1605
    const/16 v0, 0xf9f

    invoke-virtual {p0, v0}, Lc/t/m/g/cx$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1243
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1253
    :sswitch_1
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->d(Lc/t/m/g/cx;)Lc/t/m/g/dv;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->e(Lc/t/m/g/cx;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->e(Lc/t/m/g/cx;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1254
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    iget-object v1, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v1}, Lc/t/m/g/cx;->d(Lc/t/m/g/cx;)Lc/t/m/g/dv;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;Lc/t/m/g/dv;)V

    .line 1255
    const-string v0, "TxLocationManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "time_callback"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->d(Lc/t/m/g/cx;)Lc/t/m/g/dv;

    move-result-object v2

    invoke-virtual {v2}, Lc/t/m/g/dv;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->d(Lc/t/m/g/cx;)Lc/t/m/g/dv;

    move-result-object v2

    invoke-virtual {v2}, Lc/t/m/g/dv;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->d(Lc/t/m/g/cx;)Lc/t/m/g/dv;

    move-result-object v1

    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->f(Lc/t/m/g/cx;)I

    move-result v2

    .line 1257
    invoke-static {}, Lc/t/m/g/cx;->j()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v3}, Lc/t/m/g/cx;->f(Lc/t/m/g/cx;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1256
    invoke-interface {v7, v1, v2, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 1258
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->g(Lc/t/m/g/cx;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->h(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentDistanceListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1259
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->h(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentDistanceListener;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v1}, Lc/t/m/g/cx;->d(Lc/t/m/g/cx;)Lc/t/m/g/dv;

    move-result-object v1

    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->i(Lc/t/m/g/cx;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lc/t/m/g/f$a;->a(DI)D

    move-result-wide v2

    iget-object v4, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v4}, Lc/t/m/g/cx;->f(Lc/t/m/g/cx;)I

    move-result v4

    invoke-static {}, Lc/t/m/g/cx;->j()Landroid/util/SparseArray;

    move-result-object v5

    iget-object v7, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v7}, Lc/t/m/g/cx;->f(Lc/t/m/g/cx;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/tencent/map/geolocation/TencentDistanceListener;->onDistanceChanged(Lcom/tencent/map/geolocation/TencentLocation;DILjava/lang/String;)V

    .line 1262
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_3

    if-nez v6, :cond_3

    .line 1263
    const/16 v0, 0x2edf

    invoke-virtual {p0, v0, v10, v11}, Lc/t/m/g/cx$a;->sendEmptyMessageDelayed(IJ)Z

    .line 1266
    :cond_3
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->j(Lc/t/m/g/cx;)Z

    move-result v0

    .line 1267
    iget-object v1, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v1}, Lc/t/m/g/cx;->k(Lc/t/m/g/cx;)Lc/t/m/g/df;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc/t/m/g/df;->a(Z)V

    .line 1268
    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1388

    cmp-long v0, v10, v0

    if-lez v0, :cond_0

    .line 1270
    const/16 v0, 0xf9f

    const-wide/16 v2, 0x5dc

    sub-long v2, v10, v2

    invoke-virtual {p0, v0, v2, v3}, Lc/t/m/g/cx$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1275
    :sswitch_2
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->d(Lc/t/m/g/cx;)Lc/t/m/g/dv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    iget-object v1, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v1}, Lc/t/m/g/cx;->d(Lc/t/m/g/cx;)Lc/t/m/g/dv;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;Lc/t/m/g/dv;)V

    .line 1277
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->d(Lc/t/m/g/cx;)Lc/t/m/g/dv;

    move-result-object v1

    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->f(Lc/t/m/g/cx;)I

    move-result v2

    .line 1278
    invoke-static {}, Lc/t/m/g/cx;->j()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v3}, Lc/t/m/g/cx;->f(Lc/t/m/g/cx;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1277
    invoke-interface {v7, v1, v2, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->g(Lc/t/m/g/cx;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->h(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentDistanceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->h(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentDistanceListener;

    move-result-object v0

    iget-object v1, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v1}, Lc/t/m/g/cx;->d(Lc/t/m/g/cx;)Lc/t/m/g/dv;

    move-result-object v1

    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->i(Lc/t/m/g/cx;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lc/t/m/g/f$a;->a(DI)D

    move-result-wide v2

    iget-object v4, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v4}, Lc/t/m/g/cx;->f(Lc/t/m/g/cx;)I

    move-result v4

    invoke-static {}, Lc/t/m/g/cx;->j()Landroid/util/SparseArray;

    move-result-object v5

    iget-object v6, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v6}, Lc/t/m/g/cx;->f(Lc/t/m/g/cx;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/tencent/map/geolocation/TencentDistanceListener;->onDistanceChanged(Lcom/tencent/map/geolocation/TencentLocation;DILjava/lang/String;)V

    goto/16 :goto_0

    .line 1285
    :sswitch_3
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->l(Lc/t/m/g/cx;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1288
    const-string v0, "TxLocationManagerImpl"

    const-string v2, "network connected --> prepare json"

    invoke-static {v0, v2}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    :sswitch_4
    const-string v0, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preCallback:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {}, Lc/t/m/g/cx;->k()J

    move-result-wide v12

    sub-long/2addr v4, v12

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    if-eqz v6, :cond_7

    .line 1295
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->m(Lc/t/m/g/cx;)J

    move-result-wide v2

    const-wide/32 v4, 0x3a980

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    .line 1296
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->n(Lc/t/m/g/cx;)J

    .line 1297
    :cond_4
    const-string v0, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "the daemonLocation,so we delay long time upload:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v3}, Lc/t/m/g/cx;->m(Lc/t/m/g/cx;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v3}, Lc/t/m/g/cx;->o(Lc/t/m/g/cx;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->o(Lc/t/m/g/cx;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->m(Lc/t/m/g/cx;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;J)J

    .line 1317
    :cond_5
    :goto_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 1318
    const-string v0, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wifi error."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    :cond_6
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->q(Lc/t/m/g/cx;)I

    move-result v9

    .line 1322
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->r(Lc/t/m/g/cx;)Lc/t/m/g/dl;

    move-result-object v0

    .line 1323
    if-nez v0, :cond_9

    .line 1324
    const-string v0, "TxLocationManagerImpl"

    const-string v1, "last known info is null ,so we return"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1304
    :cond_7
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->j(Lc/t/m/g/cx;)Z

    move-result v0

    .line 1305
    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->k(Lc/t/m/g/cx;)Lc/t/m/g/df;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc/t/m/g/df;->a(Z)V

    .line 1306
    if-eqz v0, :cond_5

    const-wide/16 v2, 0x1388

    cmp-long v0, v10, v2

    if-lez v0, :cond_5

    .line 1307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1308
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->p(Lc/t/m/g/cx;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v12, 0x5dc

    sub-long/2addr v10, v12

    cmp-long v0, v4, v10

    if-ltz v0, :cond_8

    .line 1309
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0, v2, v3}, Lc/t/m/g/cx;->b(Lc/t/m/g/cx;J)J

    goto :goto_1

    .line 1311
    :cond_8
    const-string v0, "TxLocationManagerImpl"

    const-string v1, "ignore PREPARE_JSON"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1327
    :cond_9
    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->s(Lc/t/m/g/cx;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    .line 1328
    invoke-static {v3}, Lc/t/m/g/cx;->t(Lc/t/m/g/cx;)Lc/t/m/g/cj;

    move-result-object v3

    iget-boolean v4, p0, Lc/t/m/g/cx$a;->c:Z

    if-eqz v4, :cond_b

    if-nez v6, :cond_b

    const/4 v4, 0x1

    :goto_2
    iget-object v5, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v5}, Lc/t/m/g/cx;->u(Lc/t/m/g/cx;)Z

    move-result v5

    .line 1327
    invoke-virtual/range {v0 .. v6}, Lc/t/m/g/dl;->a(ILjava/lang/String;Lc/t/m/g/cj;ZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1329
    invoke-static {v3}, Lc/t/m/g/f$a;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    .line 1330
    :goto_3
    if-eqz v2, :cond_a

    .line 1331
    const-string v4, "TxLocationManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "handleMessage: bad json "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    :cond_a
    if-eqz v2, :cond_d

    .line 1335
    iget v0, p0, Lc/t/m/g/cx$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/t/m/g/cx$a;->a:I

    .line 1336
    iget v0, p0, Lc/t/m/g/cx$a;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->j(Lc/t/m/g/cx;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1337
    const-string v0, "TxLocationManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage: bad json "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    const/4 v1, 0x2

    sget-object v2, Lc/t/m/g/dv;->a:Lc/t/m/g/dv;

    invoke-static {v0, v1, v2}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;ILc/t/m/g/dv;)V

    .line 1339
    const/4 v0, 0x0

    iput v0, p0, Lc/t/m/g/cx$a;->a:I

    goto/16 :goto_0

    .line 1328
    :cond_b
    const/4 v4, 0x0

    goto :goto_2

    .line 1329
    :cond_c
    const/4 v2, 0x0

    goto :goto_3

    .line 1343
    :cond_d
    const/4 v2, 0x0

    iput v2, p0, Lc/t/m/g/cx$a;->a:I

    .line 1355
    if-nez v6, :cond_e

    invoke-static {v8}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->isRequestRawData(Lcom/tencent/map/geolocation/TencentLocationRequest;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1356
    new-instance v0, Lc/t/m/g/dv$a;

    invoke-direct {v0}, Lc/t/m/g/dv$a;-><init>()V

    .line 1357
    const/4 v2, 0x0

    iput-object v2, v0, Lc/t/m/g/dv$a;->b:Lc/t/m/g/dv;

    iput v1, v0, Lc/t/m/g/dv$a;->c:I

    .line 1358
    invoke-virtual {v0}, Lc/t/m/g/dv$a;->a()Lc/t/m/g/dv;

    move-result-object v1

    .line 1359
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->setRawData(Lcom/tencent/map/geolocation/TencentLocation;[B)Lcom/tencent/map/geolocation/TencentLocation;

    .line 1360
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0, v1}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;Lc/t/m/g/dv;)V

    .line 1361
    const/4 v2, 0x0

    .line 1362
    invoke-static {}, Lc/t/m/g/cx;->j()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1361
    invoke-interface {v7, v1, v2, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1371
    :cond_e
    const-string v1, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "postCallback:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {}, Lc/t/m/g/cx;->k()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    iget-object v1, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v1}, Lc/t/m/g/cx;->v(Lc/t/m/g/cx;)Lc/t/m/g/dl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/t/m/g/dl;->a(Lc/t/m/g/dl;)I

    move-result v1

    .line 1374
    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->f(Lc/t/m/g/cx;)I

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->d(Lc/t/m/g/cx;)Lc/t/m/g/dv;

    move-result-object v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    const/4 v2, 0x2

    if-lt v1, v2, :cond_10

    iget-object v1, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    .line 1375
    invoke-static {v1}, Lc/t/m/g/cx;->d(Lc/t/m/g/cx;)Lc/t/m/g/dv;

    move-result-object v1

    invoke-virtual {v1}, Lc/t/m/g/dv;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x42a00000    # 80.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_10

    .line 1376
    :cond_f
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    const/4 v1, 0x0

    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->d(Lc/t/m/g/cx;)Lc/t/m/g/dv;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;ILc/t/m/g/dv;)V

    goto/16 :goto_0

    .line 1378
    :cond_10
    iget-object v1, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v1}, Lc/t/m/g/cx;->w(Lc/t/m/g/cx;)Lc/t/m/g/dd;

    move-result-object v1

    :try_start_1
    const-string v2, "GBK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lc/t/m/g/f$a;->b([B)[B

    move-result-object v2

    invoke-static {v2, v9}, Lc/t/m/g/dd;->a([BI)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lc/t/m/g/dd$a;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v2, v4, v0}, Lc/t/m/g/dd$a;-><init>(I[BLjava/lang/String;Ljava/lang/Object;)V

    iput-object v3, v5, Lc/t/m/g/dd$a;->b:Ljava/lang/String;

    invoke-static {v5}, Lc/t/m/g/dd$a;->a(Lc/t/m/g/dd$a;)[B

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lc/t/m/g/dd;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1379
    :cond_11
    :goto_4
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->x(Lc/t/m/g/cx;)Lc/t/m/g/cl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_0

    .line 1378
    :catch_0
    move-exception v0

    const-string v1, "TxRequestSender"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1384
    :sswitch_5
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->r(Lc/t/m/g/cx;)Lc/t/m/g/dl;

    move-result-object v0

    .line 1385
    if-nez v0, :cond_12

    .line 1386
    const-string v0, "TxLocationManagerImpl"

    const-string v1, "last known info2 is null ,so we return"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1389
    :cond_12
    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->s(Lc/t/m/g/cx;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    .line 1390
    invoke-static {v3}, Lc/t/m/g/cx;->t(Lc/t/m/g/cx;)Lc/t/m/g/cj;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1389
    invoke-virtual/range {v0 .. v6}, Lc/t/m/g/dl;->a(ILjava/lang/String;Lc/t/m/g/cj;ZZZ)Ljava/lang/String;

    move-result-object v2

    .line 1391
    invoke-static {v2}, Lc/t/m/g/f$a;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    .line 1393
    :goto_5
    if-eqz v1, :cond_14

    .line 1394
    const-string v0, "TxLocationManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage: bad json2 "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1391
    :cond_13
    const/4 v1, 0x0

    goto :goto_5

    .line 1397
    :cond_14
    iget-object v1, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v1}, Lc/t/m/g/cx;->w(Lc/t/m/g/cx;)Lc/t/m/g/dd;

    move-result-object v1

    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v3}, Lc/t/m/g/cx;->q(Lc/t/m/g/cx;)I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :try_start_2
    const-string v4, "GBK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lc/t/m/g/f$a;->b([B)[B

    move-result-object v4

    invoke-static {v4, v3}, Lc/t/m/g/dd;->a([BI)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lc/t/m/g/dd$a;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v4, v3, v0}, Lc/t/m/g/dd$a;-><init>(I[BLjava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v5, Lc/t/m/g/dd$a;->b:Ljava/lang/String;

    invoke-static {v5}, Lc/t/m/g/dd$a;->a(Lc/t/m/g/dd$a;)[B

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v1, Lc/t/m/g/dd;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v0, v1, Lc/t/m/g/dd;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    const-string v0, "TxRequestSender"

    const-string/jumbo v1, "the verify request come.so we delete queue others"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1398
    :cond_15
    :goto_6
    const/16 v0, 0xf9e

    iget-object v1, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v1}, Lc/t/m/g/cx;->c(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getCheckInterval()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lc/t/m/g/cx$a;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1397
    :catch_1
    move-exception v0

    const-string v1, "TxRequestSender"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1403
    :sswitch_6
    const/16 v0, 0x1386

    invoke-virtual {p0, v0}, Lc/t/m/g/cx$a;->removeMessages(I)V

    .line 1404
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->c(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "daemon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1405
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;Z)Z

    goto/16 :goto_0

    .line 1408
    :cond_16
    const-string v0, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "respCallback:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {}, Lc/t/m/g/cx;->k()J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 1410
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1411
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lc/t/m/g/dd$a;

    .line 1412
    iget-object v2, v0, Lc/t/m/g/dd$a;->a:Ljava/lang/Object;

    check-cast v2, Lc/t/m/g/dl;

    .line 1413
    iget-object v4, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v4, v2}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;Lc/t/m/g/dl;)Lc/t/m/g/dl;

    .line 1414
    iget-object v0, v0, Lc/t/m/g/dd$a;->b:Ljava/lang/String;

    .line 1418
    :try_start_3
    new-instance v4, Lc/t/m/g/dv$a;

    invoke-direct {v4}, Lc/t/m/g/dv$a;-><init>()V

    .line 1419
    iput-object v3, v4, Lc/t/m/g/dv$a;->a:Ljava/lang/String;

    iput v1, v4, Lc/t/m/g/dv$a;->c:I

    .line 1420
    invoke-virtual {v4}, Lc/t/m/g/dv$a;->a()Lc/t/m/g/dv;

    move-result-object v1

    .line 1424
    invoke-virtual {v1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "resp_json"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    invoke-static {v1}, Lc/t/m/g/dv;->a(Lc/t/m/g/dv;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1440
    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v3}, Lc/t/m/g/cx;->y(Lc/t/m/g/cx;)Lc/t/m/g/dj;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lc/t/m/g/dv;->a(Lc/t/m/g/dv;Lc/t/m/g/dj;Z)Lc/t/m/g/dv;

    .line 1441
    invoke-static {v1, v0}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->setRawQuery(Lcom/tencent/map/geolocation/TencentLocation;Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v2}, Lc/t/m/g/dl;->a()Lc/t/m/g/dk;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 1445
    invoke-virtual {v2}, Lc/t/m/g/dl;->a()Lc/t/m/g/dk;

    move-result-object v2

    iget v2, v2, Lc/t/m/g/dk;->c:I

    .line 1449
    :cond_17
    invoke-virtual {v1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "req_cost"

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1450
    sget-boolean v2, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->COMPHTTPIO:Z

    if-eqz v2, :cond_18

    .line 1451
    invoke-virtual {v1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "urlC_cost"

    iget v4, p1, Landroid/os/Message;->arg2:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1454
    :cond_18
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc/t/m/g/cx$a;->c:Z

    .line 1455
    invoke-virtual {v1}, Lc/t/m/g/dv;->getVerifyKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1}, Lc/t/m/g/dv;->getVerifyKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1456
    if-eqz v0, :cond_19

    .line 1458
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1459
    const-string v0, "attribute"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1460
    const-string v0, "access_token"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1461
    const-string v0, "app_label"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1462
    const-string v0, "detectgps"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1463
    const-string v0, "control"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1464
    const-string v0, "app_name"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1465
    const-string/jumbo v0, "version"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1466
    const-string v0, "address"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1467
    const-string v0, "source"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1468
    const-string v0, "bearing"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1469
    const-string v0, "pstat"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1470
    invoke-virtual {v1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "wifi_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1477
    :cond_19
    :goto_7
    :try_start_5
    invoke-virtual {v1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "motion"

    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v3}, Lc/t/m/g/cx;->z(Lc/t/m/g/cx;)Lc/t/m/g/cy;

    move-result-object v3

    invoke-virtual {v3}, Lc/t/m/g/cy;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    invoke-virtual {v1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->c(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 1480
    :goto_8
    invoke-virtual {v1}, Lc/t/m/g/dv;->getAccuracy()F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1e

    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->A(Lc/t/m/g/cx;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    .line 1481
    :goto_9
    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->y(Lc/t/m/g/cx;)Lc/t/m/g/dj;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lc/t/m/g/dv;->a(Lc/t/m/g/dv;Lc/t/m/g/dj;Z)Lc/t/m/g/dv;

    .line 1483
    const/4 v2, 0x0

    invoke-static {}, Lc/t/m/g/cx;->j()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v1, v2, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 1485
    :cond_1a
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;Z)Z

    .line 1486
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->j(Lc/t/m/g/cx;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1488
    invoke-virtual {v1}, Lc/t/m/g/dv;->a()V

    .line 1489
    invoke-virtual {v1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "wifi_data"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;ILc/t/m/g/dv;)V

    .line 1491
    const-string v0, "TxLocationManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "respCallback:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {}, Lc/t/m/g/cx;->k()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/t/m/g/f$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    :cond_1b
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->u(Lc/t/m/g/cx;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1495
    :try_start_6
    invoke-virtual {v1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    .line 1496
    if-eqz v0, :cond_1c

    .line 1497
    const-string v2, "icontrol"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1498
    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->t(Lc/t/m/g/cx;)Lc/t/m/g/cj;

    move-result-object v2

    invoke-virtual {v2}, Lc/t/m/g/cj;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1499
    const-string v3, "TxLocationManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "start icontrol:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "control"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_8

    .line 1505
    :cond_1c
    :goto_a
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->B(Lc/t/m/g/cx;)Z

    .line 1507
    :cond_1d
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0, v1}, Lc/t/m/g/cx;->b(Lc/t/m/g/cx;Lc/t/m/g/dv;)Lc/t/m/g/dv;

    goto/16 :goto_0

    .line 1428
    :catch_2
    move-exception v0

    const-string v0, "TxLocationManagerImpl"

    const-string v1, "handleMessage: location failed"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->l(Lc/t/m/g/cx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    const/4 v1, 0x2

    sget-object v2, Lc/t/m/g/dv;->a:Lc/t/m/g/dv;

    invoke-static {v0, v1, v2}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;ILc/t/m/g/dv;)V

    goto/16 :goto_0

    .line 1471
    :catch_3
    move-exception v0

    .line 1473
    const-string v2, "TxLocationManagerImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1480
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 1502
    :catch_4
    move-exception v0

    .line 1503
    const-string v2, "TxLocationManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sp:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1512
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 1513
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1514
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lc/t/m/g/dd$a;

    .line 1515
    iget-object v2, v0, Lc/t/m/g/dd$a;->a:Ljava/lang/Object;

    check-cast v2, Lc/t/m/g/dl;

    .line 1516
    iget-object v4, v0, Lc/t/m/g/dd$a;->b:Ljava/lang/String;

    .line 1518
    const/4 v0, 0x0

    iput v0, p0, Lc/t/m/g/cx$a;->b:I

    .line 1521
    :try_start_7
    new-instance v0, Lc/t/m/g/dv$a;

    invoke-direct {v0}, Lc/t/m/g/dv$a;-><init>()V

    .line 1522
    iput-object v3, v0, Lc/t/m/g/dv$a;->a:Ljava/lang/String;

    iput v1, v0, Lc/t/m/g/dv$a;->c:I

    .line 1523
    invoke-virtual {v0}, Lc/t/m/g/dv$a;->a()Lc/t/m/g/dv;

    move-result-object v1

    .line 1527
    invoke-virtual {v1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "resp_json"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    invoke-static {v1}, Lc/t/m/g/dv;->a(Lc/t/m/g/dv;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1543
    invoke-virtual {v1}, Lc/t/m/g/dv;->getAccuracy()F

    move-result v0

    float-to-double v8, v0

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    cmpl-double v0, v8, v10

    if-nez v0, :cond_21

    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->A(Lc/t/m/g/cx;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    .line 1544
    :goto_b
    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v3}, Lc/t/m/g/cx;->y(Lc/t/m/g/cx;)Lc/t/m/g/dj;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lc/t/m/g/dv;->a(Lc/t/m/g/dv;Lc/t/m/g/dj;Z)Lc/t/m/g/dv;

    .line 1545
    invoke-static {v1, v4}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->setRawQuery(Lcom/tencent/map/geolocation/TencentLocation;Ljava/lang/String;)V

    .line 1547
    const/4 v0, 0x0

    .line 1548
    invoke-virtual {v2}, Lc/t/m/g/dl;->a()Lc/t/m/g/dk;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 1549
    invoke-virtual {v2}, Lc/t/m/g/dl;->a()Lc/t/m/g/dk;

    move-result-object v0

    iget v0, v0, Lc/t/m/g/dk;->c:I

    .line 1551
    :cond_1f
    invoke-virtual {v1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sat_num"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1556
    invoke-virtual {v1}, Lc/t/m/g/dv;->getVerifyKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lc/t/m/g/dv;->getVerifyKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    if-eqz v4, :cond_20

    .line 1559
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1560
    const-string v2, "attribute"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1561
    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1562
    const-string v2, "app_label"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1563
    const-string v2, "detectgps"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1564
    const-string v2, "control"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1565
    const-string v2, "app_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1566
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1567
    const-string v2, "address"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1568
    const-string v2, "source"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1569
    const-string v2, "bearing"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1570
    const-string v2, "pstat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1571
    const-string v2, "motion"

    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v3}, Lc/t/m/g/cx;->z(Lc/t/m/g/cx;)Lc/t/m/g/cy;

    move-result-object v3

    invoke-virtual {v3}, Lc/t/m/g/cy;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1572
    invoke-virtual {v1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "wifi_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1578
    :cond_20
    :goto_c
    :try_start_9
    invoke-virtual {v1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "motion"

    iget-object v3, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v3}, Lc/t/m/g/cx;->z(Lc/t/m/g/cx;)Lc/t/m/g/cy;

    move-result-object v3

    invoke-virtual {v3}, Lc/t/m/g/cy;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    invoke-virtual {v1}, Lc/t/m/g/dv;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v2}, Lc/t/m/g/cx;->c(Lc/t/m/g/cx;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1581
    :goto_d
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0, v1}, Lc/t/m/g/cx;->b(Lc/t/m/g/cx;Lc/t/m/g/dv;)Lc/t/m/g/dv;

    .line 1582
    const/4 v2, 0x0

    invoke-static {}, Lc/t/m/g/cx;->j()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v1, v2, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1531
    :catch_5
    move-exception v0

    const-string v0, "TxLocationManagerImpl"

    const-string v1, "handleMessage: location failed"

    invoke-static {v0, v1}, Lc/t/m/g/f$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->l(Lc/t/m/g/cx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    const/4 v1, 0x2

    sget-object v2, Lc/t/m/g/dv;->a:Lc/t/m/g/dv;

    invoke-static {v0, v1, v2}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;ILc/t/m/g/dv;)V

    goto/16 :goto_0

    .line 1543
    :cond_21
    const/4 v0, 0x0

    goto/16 :goto_b

    .line 1573
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 1588
    :sswitch_8
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;Z)Z

    .line 1589
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    invoke-static {v0}, Lc/t/m/g/cx;->j(Lc/t/m/g/cx;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1590
    iget-object v0, p0, Lc/t/m/g/cx$a;->d:Lc/t/m/g/cx;

    const/4 v1, 0x1

    sget-object v2, Lc/t/m/g/dv;->a:Lc/t/m/g/dv;

    invoke-static {v0, v1, v2}, Lc/t/m/g/cx;->a(Lc/t/m/g/cx;ILc/t/m/g/dv;)V

    goto/16 :goto_0

    .line 1595
    :sswitch_9
    iget v0, p0, Lc/t/m/g/cx$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/t/m/g/cx$a;->b:I

    .line 1596
    iget v0, p0, Lc/t/m/g/cx$a;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1597
    sget-object v1, Lc/t/m/g/dv;->a:Lc/t/m/g/dv;

    const/4 v2, 0x5

    invoke-static {}, Lc/t/m/g/cx;->j()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v1, v2, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 1598
    const/4 v0, 0x0

    iput v0, p0, Lc/t/m/g/cx$a;->b:I

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    goto/16 :goto_a

    :catch_9
    move-exception v0

    goto/16 :goto_8

    .line 1250
    nop

    :sswitch_data_0
    .sparse-switch
        0x22b -> :sswitch_0
        0xf9e -> :sswitch_5
        0xf9f -> :sswitch_4
        0x1384 -> :sswitch_9
        0x1385 -> :sswitch_7
        0x1386 -> :sswitch_8
        0x1387 -> :sswitch_6
        0x1f3f -> :sswitch_3
        0x2ede -> :sswitch_2
        0x2edf -> :sswitch_1
    .end sparse-switch
.end method
