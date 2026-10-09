.class public Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "DLPluginLayoutInflater.java"


# static fields
.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static sInstance:Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.widget."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.view."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.support.v4.view"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-static {p1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v0

    const-string v1, "com.tencent.tga.plugin"

    invoke-virtual {v0, v1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getPackage(Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLPluginPackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLPluginPackage;->getPluginContext()Lcom/ryg/dynamicload/internal/DLPluginContext;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;->sInstance:Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;

    invoke-direct {v0, p0}, Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;->sInstance:Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;

    .line 41
    :cond_0
    sget-object v0, Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;->sInstance:Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;

    return-object v0
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 0
    .param p1, "newContext"    # Landroid/content/Context;

    .prologue
    .line 23
    return-object p0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 46
    sget-object v3, Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 48
    .local v0, "prefix":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/ryg/dynamicload/internal/DLPluginLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 57
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "view":Landroid/view/View;
    :goto_1
    return-object v1

    .line 52
    .restart local v0    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method
