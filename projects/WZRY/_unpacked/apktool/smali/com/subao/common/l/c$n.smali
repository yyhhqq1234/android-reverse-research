.class abstract Lcom/subao/common/l/c$n;
.super Landroid/os/AsyncTask;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/subao/common/l/c$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/subao/common/l/c$h;

.field private final d:Lcom/subao/common/l/c$b;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/subao/common/l/c$h;Lcom/subao/common/l/c$b;)V
    .locals 0

    .prologue
    .line 1059
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1060
    iput-object p1, p0, Lcom/subao/common/l/c$n;->a:Ljava/lang/String;

    .line 1061
    iput p2, p0, Lcom/subao/common/l/c$n;->b:I

    .line 1062
    iput-object p3, p0, Lcom/subao/common/l/c$n;->c:Lcom/subao/common/l/c$h;

    .line 1063
    iput-object p4, p0, Lcom/subao/common/l/c$n;->d:Lcom/subao/common/l/c$b;

    .line 1064
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 1069
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string v2, "Qos_Pass_517"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/subao/common/n/b;->a([Ljava/lang/String;)[B

    move-result-object v0

    .line 1070
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1074
    :goto_0
    const-string v1, "UsernameToken Username=\"%s\", PasswordDigest=\"%s\", Nonce=\"%s\", Created=\"%s\""

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "subaoSdk"

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    aput-object p1, v2, v4

    aput-object p0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    const-string v0, ""

    goto :goto_0
.end method

.method static a(Ljava/net/URLConnection;)V
    .locals 3

    .prologue
    .line 1081
    const-string v0, "Authorization"

    const-string v1, "WSSE profile=\"UsernameToken\""

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string v0, "X-WSSE"

    invoke-static {}, Lcom/subao/common/n/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/subao/common/n/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/subao/common/l/c$n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    return-void
.end method

.method private b()Lcom/subao/common/j/a$c;
    .locals 8

    .prologue
    const/16 v5, 0x3a98

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1086
    new-instance v0, Ljava/net/URL;

    const-string v1, "http"

    iget-object v2, p0, Lcom/subao/common/l/c$n;->a:Ljava/lang/String;

    iget v3, p0, Lcom/subao/common/l/c$n;->b:I

    iget-object v4, p0, Lcom/subao/common/l/c$n;->c:Lcom/subao/common/l/c$h;

    invoke-virtual {v4}, Lcom/subao/common/l/c$h;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1087
    const-string v1, "SubaoQos"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    .line 1088
    if-eqz v1, :cond_0

    .line 1089
    const-string v2, "SubaoQos"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_0
    new-instance v2, Lcom/subao/common/j/a;

    invoke-direct {v2, v5, v5}, Lcom/subao/common/j/a;-><init>(II)V

    .line 1092
    iget-object v3, p0, Lcom/subao/common/l/c$n;->c:Lcom/subao/common/l/c$h;

    invoke-virtual {v3}, Lcom/subao/common/l/c$h;->e()Lcom/subao/common/j/a$b;

    move-result-object v3

    .line 1093
    sget-object v4, Lcom/subao/common/j/a$a;->c:Lcom/subao/common/j/a$a;

    iget-object v4, v4, Lcom/subao/common/j/a$a;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 1094
    invoke-static {v2}, Lcom/subao/common/l/c$n;->a(Ljava/net/URLConnection;)V

    .line 1095
    const-string v0, "Access-Token"

    iget-object v4, p0, Lcom/subao/common/l/c$n;->c:Lcom/subao/common/l/c$h;

    iget-object v4, v4, Lcom/subao/common/l/c$h;->a:Lcom/subao/common/l/c$e;

    iget-object v4, v4, Lcom/subao/common/l/c$e;->d:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    sget-object v0, Lcom/subao/common/l/c$1;->b:[I

    invoke-virtual {v3}, Lcom/subao/common/j/a$b;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 1106
    if-eqz v1, :cond_1

    .line 1107
    const-string v0, "SubaoQos"

    const-string v1, "Execute HTTP %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v3, v3, Lcom/subao/common/j/a$b;->e:Ljava/lang/String;

    aput-object v3, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_1
    invoke-static {v2}, Lcom/subao/common/j/a;->b(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1100
    :pswitch_0
    iget-object v0, p0, Lcom/subao/common/l/c$n;->c:Lcom/subao/common/l/c$h;

    invoke-virtual {v0}, Lcom/subao/common/l/c$h;->f()Ljava/lang/String;

    move-result-object v0

    .line 1101
    if-eqz v1, :cond_2

    .line 1102
    const-string v1, "SubaoQos"

    const-string v4, "Execute HTTP %s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v3, v3, Lcom/subao/common/j/a$b;->e:Ljava/lang/String;

    aput-object v3, v5, v6

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-static {v2, v0}, Lcom/subao/common/j/a;->a(Ljava/net/HttpURLConnection;[B)Lcom/subao/common/j/a$c;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1

    .line 1097
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final a()Lcom/subao/common/l/c$c;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1114
    iget-object v0, p0, Lcom/subao/common/l/c$n;->c:Lcom/subao/common/l/c$h;

    invoke-virtual {v0}, Lcom/subao/common/l/c$h;->d()Lcom/subao/common/l/c$h$a;

    move-result-object v4

    .line 1115
    if-eqz v4, :cond_0

    iget v0, v4, Lcom/subao/common/l/c$h$a;->a:I

    if-eqz v0, :cond_0

    .line 1116
    iget v2, v4, Lcom/subao/common/l/c$h$a;->a:I

    .line 1117
    const-string v0, "SubaoQos"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v6, "%s prepare return error: %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/subao/common/l/c$n;->c:Lcom/subao/common/l/c$h;

    invoke-virtual {v8}, Lcom/subao/common/l/c$h;->a()Lcom/subao/common/l/c$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/subao/common/l/c$a;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    new-instance v0, Lcom/subao/common/l/c$c;

    iget-object v1, p0, Lcom/subao/common/l/c$n;->c:Lcom/subao/common/l/c$h;

    iget-object v1, v1, Lcom/subao/common/l/c$h;->a:Lcom/subao/common/l/c$e;

    iget v1, v1, Lcom/subao/common/l/c$e;->a:I

    iget-object v6, v4, Lcom/subao/common/l/c$h$a;->b:Lcom/subao/common/i/n$a;

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/l/c$c;-><init>(IILjava/lang/String;Ljava/lang/String;ILcom/subao/common/i/n$a;)V

    .line 1134
    :goto_0
    return-object v0

    .line 1124
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/subao/common/l/c$n;->b()Lcom/subao/common/j/a$c;

    move-result-object v0

    .line 1125
    iget-object v1, p0, Lcom/subao/common/l/c$n;->c:Lcom/subao/common/l/c$h;

    invoke-virtual {v1, v0}, Lcom/subao/common/l/c$h;->a(Lcom/subao/common/j/a$c;)Lcom/subao/common/l/c$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 1126
    :catch_0
    move-exception v0

    .line 1128
    const/16 v1, 0xfa0

    .line 1133
    :goto_1
    const-string v2, "SubaoQos"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/subao/common/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    iget-object v2, p0, Lcom/subao/common/l/c$n;->c:Lcom/subao/common/l/c$h;

    invoke-virtual {v2, v1, v0, v3}, Lcom/subao/common/l/c$h;->a(ILjava/lang/Exception;[B)Lcom/subao/common/l/c$c;

    move-result-object v0

    goto :goto_0

    .line 1129
    :catch_1
    move-exception v0

    .line 1131
    const/16 v1, 0xfa1

    goto :goto_1
.end method

.method a(Lcom/subao/common/l/c$c;)V
    .locals 2

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/subao/common/l/c$n;->d:Lcom/subao/common/l/c$b;

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/subao/common/l/c$n;->d:Lcom/subao/common/l/c$b;

    iget-object v1, p0, Lcom/subao/common/l/c$n;->c:Lcom/subao/common/l/c$h;

    invoke-virtual {v1}, Lcom/subao/common/l/c$h;->a()Lcom/subao/common/l/c$a;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/subao/common/l/c$b;->a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/c$c;)V

    .line 1141
    :cond_0
    return-void
.end method
