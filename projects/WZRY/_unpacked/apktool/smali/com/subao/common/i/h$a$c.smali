.class abstract Lcom/subao/common/i/h$a$c;
.super Lcom/subao/common/i/h$a$m;
.source "MessageSenderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/i/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation


# instance fields
.field final synthetic d:Lcom/subao/common/i/h$a;

.field private final e:Lcom/subao/common/c;

.field private final g:J


# direct methods
.method constructor <init>(Lcom/subao/common/i/h$a;Ljava/lang/String;Lcom/subao/common/c;)V
    .locals 2

    .prologue
    .line 816
    iput-object p1, p0, Lcom/subao/common/i/h$a$c;->d:Lcom/subao/common/i/h$a;

    .line 817
    invoke-direct {p0, p1, p2}, Lcom/subao/common/i/h$a$m;-><init>(Lcom/subao/common/i/h$a;Ljava/lang/String;)V

    .line 818
    iput-object p3, p0, Lcom/subao/common/i/h$a$c;->e:Lcom/subao/common/c;

    .line 819
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/subao/common/i/h$a$c;->g:J

    .line 820
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/subao/common/i/p$g;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 878
    invoke-static {}, Lcom/subao/common/e/z;->d()Z

    move-result v1

    .line 880
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    .line 881
    :goto_0
    new-instance v2, Lcom/subao/common/i/p$g;

    invoke-direct {v2, v1, v0, v4, v4}, Lcom/subao/common/i/p$g;-><init>(ZZLjava/lang/Integer;Ljava/lang/Integer;)V

    return-object v2

    .line 880
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Lcom/subao/common/i/p$f;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 863
    iget-object v0, p0, Lcom/subao/common/i/h$a$c;->d:Lcom/subao/common/i/h$a;

    iget-object v0, v0, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    invoke-interface {v0}, Lcom/subao/common/i/i;->b()Lcom/subao/common/j/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/subao/common/j/j;->a()Lcom/subao/common/j/j$a;

    move-result-object v0

    sget-object v2, Lcom/subao/common/j/j$a;->f:Lcom/subao/common/j/j$a;

    if-ne v0, v2, :cond_1

    .line 864
    invoke-static {}, Lcom/subao/common/l/k;->a()Lcom/subao/common/l/k;

    move-result-object v0

    .line 865
    invoke-virtual {v0}, Lcom/subao/common/l/k;->c()Lcom/subao/common/e/aj;

    move-result-object v2

    invoke-static {v2}, Lcom/subao/common/e/aj;->a(Lcom/subao/common/e/aj;)Ljava/lang/String;

    move-result-object v4

    .line 866
    invoke-virtual {v0}, Lcom/subao/common/l/k;->d()Lcom/subao/common/l/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 867
    :goto_0
    new-instance v2, Lcom/subao/common/i/p$f;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/subao/common/i/p$f;-><init>(ZZLjava/lang/Integer;Ljava/lang/String;)V

    move-object v0, v2

    .line 869
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 866
    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 869
    goto :goto_1
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 824
    const-string v0, "/v3/report/client/feedback"

    return-object v0
.end method

.method protected c()[B
    .locals 8

    .prologue
    .line 829
    invoke-static {}, Lcom/subao/common/i/k;->a()Lcom/subao/common/i/k;

    move-result-object v0

    .line 830
    new-instance v1, Ljava/io/StringWriter;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 831
    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 832
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 834
    const-string v3, "id"

    invoke-static {v2, v3, v0}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 835
    const-string/jumbo v0, "time"

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-wide v4, p0, Lcom/subao/common/i/h$a$c;->g:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 836
    const-string/jumbo v0, "type"

    iget-object v3, p0, Lcom/subao/common/i/h$a$c;->d:Lcom/subao/common/i/h$a;

    iget-object v3, v3, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    invoke-interface {v3}, Lcom/subao/common/i/i;->c()Lcom/subao/common/e/g;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/subao/common/i/e;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/i/c;)V

    .line 837
    const-string v0, "game"

    iget-object v3, p0, Lcom/subao/common/i/h$a$c;->d:Lcom/subao/common/i/h$a;

    invoke-static {v3}, Lcom/subao/common/i/h$a;->b(Lcom/subao/common/i/h$a;)Lcom/subao/common/i/l;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 838
    const-string v0, "device"

    iget-object v3, p0, Lcom/subao/common/i/h$a$c;->d:Lcom/subao/common/i/h$a;

    iget-object v3, v3, Lcom/subao/common/i/h$a;->c:Lcom/subao/common/i/m;

    invoke-static {v2, v0, v3}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 839
    const-string/jumbo v0, "version"

    iget-object v3, p0, Lcom/subao/common/i/h$a$c;->d:Lcom/subao/common/i/h$a;

    iget-object v3, v3, Lcom/subao/common/i/h$a;->a:Lcom/subao/common/i/i;

    invoke-interface {v3}, Lcom/subao/common/i/i;->e()Lcom/subao/common/i/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/subao/common/i/a;->a()Lcom/subao/common/i/r;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 840
    const-string v0, "network"

    iget-object v3, p0, Lcom/subao/common/i/h$a$c;->d:Lcom/subao/common/i/h$a;

    invoke-static {v3}, Lcom/subao/common/i/h$a;->c(Lcom/subao/common/i/h$a;)Lcom/subao/common/i/p$d;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 841
    const-string v0, "feedback"

    iget-object v3, p0, Lcom/subao/common/i/h$a$c;->e:Lcom/subao/common/c;

    invoke-static {v2, v0, v3}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 842
    invoke-direct {p0}, Lcom/subao/common/i/h$a$c;->g()Lcom/subao/common/i/p$f;

    move-result-object v0

    .line 843
    invoke-static {}, Lcom/subao/common/i/k;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/subao/common/i/h$a$c;->a(Ljava/lang/String;)Lcom/subao/common/i/p$g;

    move-result-object v3

    .line 844
    const-string v4, "accelInfo"

    new-instance v5, Lcom/subao/common/i/p$a;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v3, v6}, Lcom/subao/common/i/p$a;-><init>(Lcom/subao/common/i/p$f;Lcom/subao/common/i/p$g;Ljava/lang/Integer;)V

    invoke-static {v2, v4, v5}, Lcom/subao/common/n/g;->a(Landroid/util/JsonWriter;Ljava/lang/String;Lcom/subao/common/c;)Landroid/util/JsonWriter;

    .line 846
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 847
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 848
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 849
    const-string v1, "SubaoMessage"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    const-string v1, "SubaoMessage"

    iget-object v2, p0, Lcom/subao/common/i/h$a$c;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v1, "SubaoMessage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method
