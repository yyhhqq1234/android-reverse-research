.class synthetic Lcom/netease/mpay/ob;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netease/mpay/np$a;->values()[Lcom/netease/mpay/np$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/mpay/ob;->b:[I

    :try_start_0
    sget-object v0, Lcom/netease/mpay/ob;->b:[I

    sget-object v1, Lcom/netease/mpay/np$a;->a:Lcom/netease/mpay/np$a;

    invoke-virtual {v1}, Lcom/netease/mpay/np$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/netease/mpay/ob;->b:[I

    sget-object v1, Lcom/netease/mpay/np$a;->b:Lcom/netease/mpay/np$a;

    invoke-virtual {v1}, Lcom/netease/mpay/np$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {}, Lcom/netease/mpay/f/a/b$a;->values()[Lcom/netease/mpay/f/a/b$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netease/mpay/ob;->a:[I

    :try_start_2
    sget-object v0, Lcom/netease/mpay/ob;->a:[I

    sget-object v1, Lcom/netease/mpay/f/a/b$a;->b:Lcom/netease/mpay/f/a/b$a;

    invoke-virtual {v1}, Lcom/netease/mpay/f/a/b$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
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

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
