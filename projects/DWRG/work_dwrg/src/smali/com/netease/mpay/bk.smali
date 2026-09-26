.class public Lcom/netease/mpay/bk;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/netease/mpay/dc;

.field public static b:Ljava/lang/Boolean;

.field public static c:Ljava/lang/Boolean;

.field public static d:Ljava/lang/Boolean;

.field public static e:I

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static final m:[Ljava/lang/String;

.field public static n:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/netease/mpay/dc;->a()Lcom/netease/mpay/dc;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/bk;->a:Lcom/netease/mpay/dc;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/bk;->b:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/bk;->c:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/bk;->d:Ljava/lang/Boolean;

    sput v2, Lcom/netease/mpay/bk;->e:I

    const-string v0, "Mpay_Product_Environment"

    sput-object v0, Lcom/netease/mpay/bk;->f:Ljava/lang/String;

    const-string v0, "https://service.mkey.163.com/mpay"

    sput-object v0, Lcom/netease/mpay/bk;->g:Ljava/lang/String;

    sget-object v0, Lcom/netease/mpay/bk;->g:Ljava/lang/String;

    sput-object v0, Lcom/netease/mpay/bk;->h:Ljava/lang/String;

    const-string v0, "https://mailbox.g.mkey.163.com/mpay/api/mailbox"

    sput-object v0, Lcom/netease/mpay/bk;->i:Ljava/lang/String;

    const-string v0, "https://service.mkey.163.com/mpay/errors/error_id_token"

    sput-object v0, Lcom/netease/mpay/bk;->j:Ljava/lang/String;

    const-string v0, "u6uosOYKqABvK8GkMBrb1hnzk7CnS7ud"

    sput-object v0, Lcom/netease/mpay/bk;->k:Ljava/lang/String;

    const-string v0, "mpay-white.skin"

    sput-object v0, Lcom/netease/mpay/bk;->l:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/netease/mpay/bk;->m:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netease/mpay/bk;->n:Ljava/util/ArrayList;

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
