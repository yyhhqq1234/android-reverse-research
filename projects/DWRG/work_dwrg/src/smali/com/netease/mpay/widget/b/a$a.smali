.class Lcom/netease/mpay/widget/b/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/widget/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/widget/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/mpay/widget/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/mpay/widget/b/a$b;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/netease/mpay/widget/b/a$b;

    invoke-direct {v1, v0}, Lcom/netease/mpay/widget/b/a$b;-><init>(Lcom/netease/mpay/widget/b/b;)V

    array-length v3, v2

    if-ne v3, v7, :cond_2

    aget-object v3, v2, v5

    const-string v4, "\\?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v6

    iput-object v4, v1, Lcom/netease/mpay/widget/b/a$b;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/netease/mpay/widget/b/a$b;->c:Ljava/lang/String;

    array-length v4, v3

    if-le v4, v5, :cond_0

    aget-object v0, v3, v5

    :cond_0
    :goto_0
    aget-object v2, v2, v6

    iput-object v2, v1, Lcom/netease/mpay/widget/b/a$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/mpay/widget/bd;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v1, Lcom/netease/mpay/widget/b/a$b;->d:Ljava/util/HashMap;

    move-object v0, v1

    :cond_1
    return-object v0

    :cond_2
    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    aget-object v3, v2, v5

    iput-object v3, v1, Lcom/netease/mpay/widget/b/a$b;->b:Ljava/lang/String;

    aget-object v3, v2, v7

    const-string v4, "\\?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v6

    iput-object v4, v1, Lcom/netease/mpay/widget/b/a$b;->c:Ljava/lang/String;

    array-length v4, v3

    if-le v4, v5, :cond_0

    aget-object v0, v3, v5

    goto :goto_0
.end method
