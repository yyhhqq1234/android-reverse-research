.class Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
.super Ljava/lang/ref/WeakReference;
.source "WeakValueHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/collections/WeakValueHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakValue"
.end annotation


# instance fields
.field private key:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "queue"    # Ljava/lang/ref/ReferenceQueue;

    .prologue
    .line 165
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 166
    iput-object p1, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;->key:Ljava/lang/Object;

    .line 167
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 144
    invoke-static {p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;->create(Ljava/lang/Object;)Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/ref/ReferenceQueue;

    .prologue
    .line 144
    invoke-static {p0, p1, p2}, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;->key:Ljava/lang/Object;

    return-object v0
.end method

.method private static create(Ljava/lang/Object;)Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 160
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    invoke-direct {v0, p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "queue"    # Ljava/lang/ref/ReferenceQueue;

    .prologue
    .line 174
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 184
    if-ne p0, p1, :cond_1

    .line 199
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 187
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    if-nez v4, :cond_2

    move v2, v3

    .line 188
    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;->get()Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, "ref1":Ljava/lang/Object;
    check-cast p1, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;->get()Ljava/lang/Object;

    move-result-object v1

    .line 193
    .local v1, "ref2":Ljava/lang/Object;
    if-eq v0, v1, :cond_0

    .line 196
    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    move v2, v3

    .line 197
    goto :goto_0

    .line 199
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/tencent/component/utils/collections/WeakValueHashMap$WeakValue;->get()Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "ref":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method
