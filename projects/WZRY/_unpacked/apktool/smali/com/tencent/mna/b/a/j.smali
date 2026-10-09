.class public Lcom/tencent/mna/b/a/j;
.super Ljava/lang/Object;
.source "VivoAccManager.java"


# static fields
.field private static volatile a:Lcom/tencent/mna/b/c/b;

.field private static volatile b:Z

.field private static c:Lcom/tencent/mna/base/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    sput-object v1, Lcom/tencent/mna/b/a/j;->a:Lcom/tencent/mna/b/c/b;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mna/b/a/j;->b:Z

    .line 19
    sput-object v1, Lcom/tencent/mna/b/a/j;->c:Lcom/tencent/mna/base/c/a;

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 141
    sget-boolean v0, Lcom/tencent/mna/b/a/j;->b:Z

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "Vivo sendMsgWhenGameEnd"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 143
    const-string v0, "7"

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method public static a(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 123
    sget-boolean v0, Lcom/tencent/mna/b/a/j;->b:Z

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vivo sendMsgWhenNetworkSwitch bindNetRet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 125
    if-ne p0, v2, :cond_1

    .line 126
    const-string v0, "6"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    if-nez p0, :cond_2

    .line 128
    const-string v0, "6"

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_2
    if-ne p1, v2, :cond_3

    .line 131
    const-string v0, "6"

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_3
    const-string v0, "6"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/tencent/mna/base/c/a;)V
    .locals 3

    .prologue
    .line 22
    const-class v1, Lcom/tencent/mna/b/a/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mna/b/a/j;->a:Lcom/tencent/mna/b/c/b;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/tencent/mna/b/c/b;

    invoke-direct {v0}, Lcom/tencent/mna/b/c/b;-><init>()V

    sput-object v0, Lcom/tencent/mna/b/a/j;->a:Lcom/tencent/mna/b/c/b;

    .line 24
    sput-object p0, Lcom/tencent/mna/b/a/j;->c:Lcom/tencent/mna/base/c/a;

    .line 26
    sget-object v0, Lcom/tencent/mna/b/a/j;->a:Lcom/tencent/mna/b/c/b;

    new-instance v2, Lcom/tencent/mna/b/a/j$1;

    invoke-direct {v2}, Lcom/tencent/mna/b/a/j$1;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tencent/mna/b/c/b;->a(Lcom/tencent/mna/b/c/a$a;)Z

    move-result v0

    sput-boolean v0, Lcom/tencent/mna/b/a/j;->b:Z

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vivo init:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/tencent/mna/b/a/j;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_0
    monitor-exit v1

    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    sget-boolean v0, Lcom/tencent/mna/b/a/j;->b:Z

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vivo sendMsgWhenJumpDiagnose jumpDelay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 116
    const-string v0, "2"

    invoke-static {v0, p0}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "3"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 97
    sget-boolean v0, Lcom/tencent/mna/b/a/j;->b:Z

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vivo sendMsgWhenGameStart ip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",port:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 99
    const-string v0, "7"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 102
    :try_start_0
    const-string v0, "IP"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v0, "port"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v0, "protocol"

    const-string v2, "UDP"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    const-string v0, "4"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 166
    const-class v1, Lcom/tencent/mna/b/a/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mna/b/a/j;->a:Lcom/tencent/mna/b/c/b;

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "Vivo close"

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/tencent/mna/b/a/j;->a:Lcom/tencent/mna/b/c/b;

    invoke-virtual {v0}, Lcom/tencent/mna/b/c/b;->a()Z

    .line 169
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/b/a/j;->a:Lcom/tencent/mna/b/c/b;

    .line 171
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mna/b/a/j;->b:Z

    .line 172
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mna/b/a/j;->c:Lcom/tencent/mna/base/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit v1

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-static {p0}, Lcom/tencent/mna/b/a/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 148
    const-class v1, Lcom/tencent/mna/b/a/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mna/b/a/j;->a:Lcom/tencent/mna/b/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 150
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :try_start_2
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :goto_0
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send jsonMsg = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vivo sendMsg res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 158
    sget-object v2, Lcom/tencent/mna/b/a/j;->a:Lcom/tencent/mna/b/c/b;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mna/b/c/b;->a(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :cond_0
    :goto_1
    monitor-exit v1

    return-void

    .line 153
    :catch_0
    move-exception v2

    .line 154
    :try_start_4
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 159
    :catch_1
    move-exception v0

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 41
    sget-boolean v2, Lcom/tencent/mna/b/a/j;->b:Z

    if-nez v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {p0}, Lcom/tencent/mna/b/a/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 50
    if-ltz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 53
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 54
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vivo handleRecvMsg key:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " value:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 56
    const-string v3, "\"0\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vivo handleRecvMsg VivoW2mSwitch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mna/base/a/a;->aV()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mna/base/f/h;->a(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/tencent/mna/base/a/a;->aV()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    const-string v3, "\"0\""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 66
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mna/b/a/b;->j()I

    move-result v2

    if-ne v2, v1, :cond_4

    :cond_3
    if-nez v0, :cond_6

    .line 67
    invoke-static {}, Lcom/tencent/mna/b/a/b;->j()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 68
    :cond_4
    const v0, 0x7fffffff

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/b;->a(IZ)V

    goto/16 :goto_0

    .line 62
    :cond_5
    const-string v3, "\"1\""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 70
    :cond_6
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/tencent/mna/b/a/b;->j()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 71
    const-string v1, "6"

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_7
    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mna/b/a/b;->j()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 75
    const-string v0, "6"

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_8
    const-string v0, "\"2\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 80
    sget-object v0, Lcom/tencent/mna/b/a/j;->c:Lcom/tencent/mna/base/c/a;

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "_"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, ";"

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/tencent/mna/b/a/j;->c:Lcom/tencent/mna/base/c/a;

    sget-object v2, Lcom/tencent/mna/base/c/a$a;->aq:Lcom/tencent/mna/base/c/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mna/base/c/a;->a(Lcom/tencent/mna/base/c/a$a;Ljava/lang/String;)Lcom/tencent/mna/base/c/a;

    goto/16 :goto_0

    .line 85
    :cond_9
    const-string v0, "\"4\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcom/tencent/mna/b/a/b;->j()I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 87
    const-string v0, "8"

    const-string/jumbo v1, "wifi"

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_a
    invoke-static {}, Lcom/tencent/mna/b/a/b;->j()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 89
    const-string v0, "8"

    const-string v1, "4g"

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_b
    const-string v0, "8"

    const-string v1, "idle"

    invoke-static {v0, v1}, Lcom/tencent/mna/b/a/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 176
    const-string v0, ""

    .line 177
    if-eqz p0, :cond_0

    const-string/jumbo v1, "{"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 179
    const/16 v2, 0x7d

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 180
    if-ltz v1, :cond_0

    add-int/lit8 v3, v1, 0x1

    if-ge v3, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 181
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_0
    return-object v0
.end method
