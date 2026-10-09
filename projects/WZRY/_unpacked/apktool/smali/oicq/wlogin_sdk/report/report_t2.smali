.class public Loicq/wlogin_sdk/report/report_t2;
.super Loicq/wlogin_sdk/report/report_t;
.source "report_t2.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public _app:J

.field public _app_list:[J

.field public _log:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Loicq/wlogin_sdk/report/report_t3;",
            ">;"
        }
    .end annotation
.end field

.field public _name:Ljava/lang/String;

.field public _oper:Ljava/lang/String;

.field public _rlen:I

.field public _rst1:I

.field public _rst2:I

.field public _slen:I

.field public _start:J

.field public _sub_app:J

.field public _type:Ljava/lang/String;

.field public _uin:J

.field public _used:I

.field public attr:I


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 41
    invoke-direct {p0}, Loicq/wlogin_sdk/report/report_t;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Loicq/wlogin_sdk/report/report_t2;->_type:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Loicq/wlogin_sdk/report/report_t2;->_oper:Ljava/lang/String;

    .line 18
    iput-wide v2, p0, Loicq/wlogin_sdk/report/report_t2;->_start:J

    .line 19
    iput v4, p0, Loicq/wlogin_sdk/report/report_t2;->_used:I

    .line 20
    iput-wide v2, p0, Loicq/wlogin_sdk/report/report_t2;->_uin:J

    .line 21
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Loicq/wlogin_sdk/report/report_t2;->_name:Ljava/lang/String;

    .line 22
    iput-wide v2, p0, Loicq/wlogin_sdk/report/report_t2;->_app:J

    .line 23
    iput v4, p0, Loicq/wlogin_sdk/report/report_t2;->_rst1:I

    .line 24
    iput v4, p0, Loicq/wlogin_sdk/report/report_t2;->_rst2:I

    .line 25
    iput-wide v2, p0, Loicq/wlogin_sdk/report/report_t2;->_sub_app:J

    .line 26
    iput-object v5, p0, Loicq/wlogin_sdk/report/report_t2;->_app_list:[J

    .line 27
    iput v4, p0, Loicq/wlogin_sdk/report/report_t2;->_rlen:I

    .line 28
    iput v4, p0, Loicq/wlogin_sdk/report/report_t2;->_slen:I

    .line 30
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Loicq/wlogin_sdk/report/report_t2;->_log:Ljava/util/TreeMap;

    .line 42
    const-string v0, "login"

    iput-object v0, p0, Loicq/wlogin_sdk/report/report_t2;->_type:Ljava/lang/String;

    .line 43
    const-string v0, "null"

    iput-object v0, p0, Loicq/wlogin_sdk/report/report_t2;->_oper:Ljava/lang/String;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Loicq/wlogin_sdk/report/report_t2;->_start:J

    .line 45
    iput-wide v2, p0, Loicq/wlogin_sdk/report/report_t2;->_app:J

    .line 46
    iput-wide v2, p0, Loicq/wlogin_sdk/report/report_t2;->_sub_app:J

    .line 47
    iput-object v5, p0, Loicq/wlogin_sdk/report/report_t2;->_app_list:[J

    .line 48
    iput p1, p0, Loicq/wlogin_sdk/report/report_t2;->attr:I

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJ[J)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 32
    invoke-direct {p0}, Loicq/wlogin_sdk/report/report_t;-><init>()V

    .line 16
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Loicq/wlogin_sdk/report/report_t2;->_type:Ljava/lang/String;

    .line 17
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Loicq/wlogin_sdk/report/report_t2;->_oper:Ljava/lang/String;

    .line 18
    iput-wide v6, p0, Loicq/wlogin_sdk/report/report_t2;->_start:J

    .line 19
    iput v4, p0, Loicq/wlogin_sdk/report/report_t2;->_used:I

    .line 20
    iput-wide v6, p0, Loicq/wlogin_sdk/report/report_t2;->_uin:J

    .line 21
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Loicq/wlogin_sdk/report/report_t2;->_name:Ljava/lang/String;

    .line 22
    iput-wide v6, p0, Loicq/wlogin_sdk/report/report_t2;->_app:J

    .line 23
    iput v4, p0, Loicq/wlogin_sdk/report/report_t2;->_rst1:I

    .line 24
    iput v4, p0, Loicq/wlogin_sdk/report/report_t2;->_rst2:I

    .line 25
    iput-wide v6, p0, Loicq/wlogin_sdk/report/report_t2;->_sub_app:J

    .line 26
    const/4 v2, 0x0

    iput-object v2, p0, Loicq/wlogin_sdk/report/report_t2;->_app_list:[J

    .line 27
    iput v4, p0, Loicq/wlogin_sdk/report/report_t2;->_rlen:I

    .line 28
    iput v4, p0, Loicq/wlogin_sdk/report/report_t2;->_slen:I

    .line 30
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Loicq/wlogin_sdk/report/report_t2;->_log:Ljava/util/TreeMap;

    .line 33
    iput-object p1, p0, Loicq/wlogin_sdk/report/report_t2;->_type:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Loicq/wlogin_sdk/report/report_t2;->_oper:Ljava/lang/String;

    .line 35
    iput-wide p3, p0, Loicq/wlogin_sdk/report/report_t2;->_start:J

    .line 36
    iput-wide p5, p0, Loicq/wlogin_sdk/report/report_t2;->_app:J

    .line 37
    move-wide/from16 v0, p7

    iput-wide v0, p0, Loicq/wlogin_sdk/report/report_t2;->_sub_app:J

    .line 38
    move-object/from16 v0, p9

    iput-object v0, p0, Loicq/wlogin_sdk/report/report_t2;->_app_list:[J

    .line 39
    return-void
.end method


# virtual methods
.method public add_t3(Loicq/wlogin_sdk/report/report_t3;)V
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Loicq/wlogin_sdk/report/report_t2;->_rlen:I

    iget v1, p1, Loicq/wlogin_sdk/report/report_t3;->_rlen:I

    add-int/2addr v0, v1

    iput v0, p0, Loicq/wlogin_sdk/report/report_t2;->_rlen:I

    .line 62
    iget v0, p0, Loicq/wlogin_sdk/report/report_t2;->_slen:I

    iget v1, p1, Loicq/wlogin_sdk/report/report_t3;->_slen:I

    add-int/2addr v0, v1

    iput v0, p0, Loicq/wlogin_sdk/report/report_t2;->_slen:I

    .line 64
    iget-object v0, p0, Loicq/wlogin_sdk/report/report_t2;->_log:Ljava/util/TreeMap;

    iget-object v1, p0, Loicq/wlogin_sdk/report/report_t2;->_log:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public clear_t3()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Loicq/wlogin_sdk/report/report_t2;->_log:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 70
    return-void
.end method

.method public commit(JLjava/lang/String;II)V
    .locals 5

    .prologue
    .line 53
    iput-wide p1, p0, Loicq/wlogin_sdk/report/report_t2;->_uin:J

    .line 54
    iput-object p3, p0, Loicq/wlogin_sdk/report/report_t2;->_name:Ljava/lang/String;

    .line 55
    iput p4, p0, Loicq/wlogin_sdk/report/report_t2;->_rst1:I

    .line 56
    iput p5, p0, Loicq/wlogin_sdk/report/report_t2;->_rst2:I

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Loicq/wlogin_sdk/report/report_t2;->_start:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Loicq/wlogin_sdk/report/report_t2;->_used:I

    .line 58
    return-void
.end method

.method public toJasonObj()Lorg/json/JSONObject;
    .locals 14

    .prologue
    const-wide v12, 0xffffffffL

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x0

    .line 77
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    const-string/jumbo v0, "type"

    iget-object v3, p0, Loicq/wlogin_sdk/report/report_t2;->_type:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v0, "oper"

    iget-object v3, p0, Loicq/wlogin_sdk/report/report_t2;->_oper:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v0, "start"

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Loicq/wlogin_sdk/report/report_t2;->_start:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    and-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v0, "used"

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Loicq/wlogin_sdk/report/report_t2;->_used:I

    int-to-long v6, v6

    and-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v0, "uin"

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Loicq/wlogin_sdk/report/report_t2;->_uin:J

    and-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v0, "app"

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Loicq/wlogin_sdk/report/report_t2;->_app:J

    and-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v0, "subapp"

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Loicq/wlogin_sdk/report/report_t2;->_sub_app:J

    and-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v0, "email"

    iget-object v3, p0, Loicq/wlogin_sdk/report/report_t2;->_name:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v0, "attr"

    iget v3, p0, Loicq/wlogin_sdk/report/report_t2;->attr:I

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string v0, ""

    .line 89
    iget-object v3, p0, Loicq/wlogin_sdk/report/report_t2;->_app_list:[J

    if-eqz v3, :cond_1

    move v3, v2

    .line 90
    :goto_0
    iget-object v4, p0, Loicq/wlogin_sdk/report/report_t2;->_app_list:[J

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 92
    iget-object v4, p0, Loicq/wlogin_sdk/report/report_t2;->_app_list:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Loicq/wlogin_sdk/report/report_t2;->_app_list:[J

    aget-wide v8, v7, v3

    and-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%d,"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Loicq/wlogin_sdk/report/report_t2;->_app_list:[J

    aget-wide v8, v7, v3

    and-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 98
    :cond_1
    const-string v3, "applist"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v0, "rst1"

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Loicq/wlogin_sdk/report/report_t2;->_rst1:I

    int-to-long v6, v6

    and-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v0, "rst2"

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Loicq/wlogin_sdk/report/report_t2;->_rst2:I

    int-to-long v6, v6

    and-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 104
    iget-object v0, p0, Loicq/wlogin_sdk/report/report_t2;->_log:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 105
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Loicq/wlogin_sdk/report/report_t2;->_log:Ljava/util/TreeMap;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loicq/wlogin_sdk/report/report_t3;

    invoke-virtual {v0}, Loicq/wlogin_sdk/report/report_t3;->toJasonObj()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 107
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 109
    :cond_2
    const-string v0, "log"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 120
    :goto_3
    return-object v0

    .line 110
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 111
    :goto_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 112
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 114
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 115
    invoke-virtual {v1}, Ljava/io/StringWriter;->flush()V

    .line 116
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    const-string v2, "exception"

    invoke-static {v2, v1}, Loicq/wlogin_sdk/tools/util;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 110
    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_4
.end method
