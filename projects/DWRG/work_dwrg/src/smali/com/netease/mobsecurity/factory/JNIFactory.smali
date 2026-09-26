.class public Lcom/netease/mobsecurity/factory/JNIFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/netease/mobsecurity/factory/JNIFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/mobsecurity/factory/JNIFactory;
    .locals 1

    sget-object v0, Lcom/netease/mobsecurity/factory/JNIFactory;->a:Lcom/netease/mobsecurity/factory/JNIFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/mobsecurity/factory/JNIFactory;

    invoke-direct {v0}, Lcom/netease/mobsecurity/factory/JNIFactory;-><init>()V

    sput-object v0, Lcom/netease/mobsecurity/factory/JNIFactory;->a:Lcom/netease/mobsecurity/factory/JNIFactory;

    :cond_0
    sget-object v0, Lcom/netease/mobsecurity/factory/JNIFactory;->a:Lcom/netease/mobsecurity/factory/JNIFactory;

    return-object v0
.end method


# virtual methods
.method public native w410e0e9eb51cc6b0(Ljava/lang/Object;II)Ljava/lang/String;
.end method

.method public native w6e685a9adf5af10b(Ljava/lang/Object;DD)Ljava/lang/String;
.end method

.method public native wd92f591f6307ab76(Ljava/lang/Object;[Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
.end method
