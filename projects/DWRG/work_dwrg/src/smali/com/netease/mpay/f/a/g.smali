.class synthetic Lcom/netease/mpay/f/a/g;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netease/mpay/f/a/d$c;->values()[Lcom/netease/mpay/f/a/d$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/mpay/f/a/g;->b:[I

    :try_start_0
    sget-object v0, Lcom/netease/mpay/f/a/g;->b:[I

    sget-object v1, Lcom/netease/mpay/f/a/d$c;->c:Lcom/netease/mpay/f/a/d$c;

    invoke-virtual {v1}, Lcom/netease/mpay/f/a/d$c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/netease/mpay/f/a/g;->b:[I

    sget-object v1, Lcom/netease/mpay/f/a/d$c;->b:Lcom/netease/mpay/f/a/d$c;

    invoke-virtual {v1}, Lcom/netease/mpay/f/a/d$c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/netease/mpay/f/a/g;->b:[I

    sget-object v1, Lcom/netease/mpay/f/a/d$c;->a:Lcom/netease/mpay/f/a/d$c;

    invoke-virtual {v1}, Lcom/netease/mpay/f/a/d$c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-static {}, Lcom/netease/mpay/f/a/d$f;->values()[Lcom/netease/mpay/f/a/d$f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/mpay/f/a/g;->a:[I

    :try_start_3
    sget-object v0, Lcom/netease/mpay/f/a/g;->a:[I

    sget-object v1, Lcom/netease/mpay/f/a/d$f;->a:Lcom/netease/mpay/f/a/d$f;

    invoke-virtual {v1}, Lcom/netease/mpay/f/a/d$f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/netease/mpay/f/a/g;->a:[I

    sget-object v1, Lcom/netease/mpay/f/a/d$f;->b:Lcom/netease/mpay/f/a/d$f;

    invoke-virtual {v1}, Lcom/netease/mpay/f/a/d$f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
