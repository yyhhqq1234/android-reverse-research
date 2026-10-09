.class final Lcom/netease/glide/load/engine/DecodeHelper;
.super Ljava/lang/Object;
.source "DecodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cacheKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/glide/load/Key;",
            ">;"
        }
    .end annotation
.end field

.field private diskCacheProvider:Lcom/netease/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private diskCacheStrategy:Lcom/netease/glide/load/engine/DiskCacheStrategy;

.field private glideContext:Lcom/netease/glide/GlideContext;

.field private height:I

.field private isCacheKeysSet:Z

.field private isLoadDataSet:Z

.field private isScaleOnlyOrNoTransform:Z

.field private isTransformationRequired:Z

.field private final loadData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/glide/load/model/ModelLoader$LoadData<",
            "*>;>;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/Object;

.field private options:Lcom/netease/glide/load/Options;

.field private priority:Lcom/netease/glide/Priority;

.field private resourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/netease/glide/load/Key;

.field private transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscode;>;"
        }
    .end annotation
.end field

.field private transformations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/netease/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->glideContext:Lcom/netease/glide/GlideContext;

    .line 80
    iput-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    .line 81
    iput-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->signature:Lcom/netease/glide/load/Key;

    .line 82
    iput-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    .line 83
    iput-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    .line 84
    iput-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->options:Lcom/netease/glide/load/Options;

    .line 85
    iput-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->priority:Lcom/netease/glide/Priority;

    .line 86
    iput-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    .line 87
    iput-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->diskCacheStrategy:Lcom/netease/glide/load/engine/DiskCacheStrategy;

    .line 89
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->isLoadDataSet:Z

    .line 91
    iget-object v1, p0, Lcom/netease/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 92
    iput-boolean v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->isCacheKeysSet:Z

    return-void
.end method

.method getArrayPool()Lcom/netease/glide/load/engine/bitmap_recycle/ArrayPool;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->glideContext:Lcom/netease/glide/GlideContext;

    invoke-virtual {v0}, Lcom/netease/glide/GlideContext;->getArrayPool()Lcom/netease/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v0

    return-object v0
.end method

.method getCacheKeys()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/glide/load/Key;",
            ">;"
        }
    .end annotation

    .line 222
    iget-boolean v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->isCacheKeysSet:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->isCacheKeysSet:Z

    .line 224
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    invoke-virtual {p0}, Lcom/netease/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 228
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/glide/load/model/ModelLoader$LoadData;

    .line 229
    iget-object v5, p0, Lcom/netease/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    iget-object v6, v4, Lcom/netease/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/netease/glide/load/Key;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 230
    iget-object v5, p0, Lcom/netease/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    iget-object v6, v4, Lcom/netease/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/netease/glide/load/Key;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v5, 0x0

    .line 232
    :goto_1
    iget-object v6, v4, Lcom/netease/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 233
    iget-object v6, p0, Lcom/netease/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    iget-object v7, v4, Lcom/netease/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 234
    iget-object v6, p0, Lcom/netease/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    iget-object v7, v4, Lcom/netease/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    return-object v0
.end method

.method getDiskCache()Lcom/netease/glide/load/engine/cache/DiskCache;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->diskCacheProvider:Lcom/netease/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v0}, Lcom/netease/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/netease/glide/load/engine/cache/DiskCache;

    move-result-object v0

    return-object v0
.end method

.method getDiskCacheStrategy()Lcom/netease/glide/load/engine/DiskCacheStrategy;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->diskCacheStrategy:Lcom/netease/glide/load/engine/DiskCacheStrategy;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->height:I

    return v0
.end method

.method getLoadData()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/glide/load/model/ModelLoader$LoadData<",
            "*>;>;"
        }
    .end annotation

    .line 205
    iget-boolean v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->isLoadDataSet:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->isLoadDataSet:Z

    .line 207
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->glideContext:Lcom/netease/glide/GlideContext;

    invoke-virtual {v0}, Lcom/netease/glide/GlideContext;->getRegistry()Lcom/netease/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/netease/glide/Registry;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 211
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/glide/load/model/ModelLoader;

    .line 212
    iget-object v4, p0, Lcom/netease/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    iget v5, p0, Lcom/netease/glide/load/engine/DecodeHelper;->width:I

    iget v6, p0, Lcom/netease/glide/load/engine/DecodeHelper;->height:I

    iget-object v7, p0, Lcom/netease/glide/load/engine/DecodeHelper;->options:Lcom/netease/glide/load/Options;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/netease/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/netease/glide/load/Options;)Lcom/netease/glide/load/model/ModelLoader$LoadData;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 214
    iget-object v4, p0, Lcom/netease/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    return-object v0
.end method

.method getLoadPath(Ljava/lang/Class;)Lcom/netease/glide/load/engine/LoadPath;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lcom/netease/glide/load/engine/LoadPath<",
            "TData;*TTranscode;>;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->glideContext:Lcom/netease/glide/GlideContext;

    invoke-virtual {v0}, Lcom/netease/glide/GlideContext;->getRegistry()Lcom/netease/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/netease/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Lcom/netease/glide/Registry;->getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/netease/glide/load/engine/LoadPath;

    move-result-object p1

    return-object p1
.end method

.method getModelClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getModelLoaders(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/netease/glide/load/model/ModelLoader<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/glide/Registry$NoModelLoaderAvailableException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->glideContext:Lcom/netease/glide/GlideContext;

    invoke-virtual {v0}, Lcom/netease/glide/GlideContext;->getRegistry()Lcom/netease/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/glide/Registry;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getOptions()Lcom/netease/glide/load/Options;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->options:Lcom/netease/glide/load/Options;

    return-object v0
.end method

.method getPriority()Lcom/netease/glide/Priority;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->priority:Lcom/netease/glide/Priority;

    return-object v0
.end method

.method getRegisteredResourceClasses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->glideContext:Lcom/netease/glide/GlideContext;

    .line 137
    invoke-virtual {v0}, Lcom/netease/glide/GlideContext;->getRegistry()Lcom/netease/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/netease/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/glide/Registry;->getRegisteredResourceClasses(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getResultEncoder(Lcom/netease/glide/load/engine/Resource;)Lcom/netease/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netease/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lcom/netease/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->glideContext:Lcom/netease/glide/GlideContext;

    invoke-virtual {v0}, Lcom/netease/glide/GlideContext;->getRegistry()Lcom/netease/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/glide/Registry;->getResultEncoder(Lcom/netease/glide/load/engine/Resource;)Lcom/netease/glide/load/ResourceEncoder;

    move-result-object p1

    return-object p1
.end method

.method getSignature()Lcom/netease/glide/load/Key;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->signature:Lcom/netease/glide/load/Key;

    return-object v0
.end method

.method getSourceEncoder(Ljava/lang/Object;)Lcom/netease/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/netease/glide/load/Encoder<",
            "TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/netease/glide/Registry$NoSourceEncoderAvailableException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->glideContext:Lcom/netease/glide/GlideContext;

    invoke-virtual {v0}, Lcom/netease/glide/GlideContext;->getRegistry()Lcom/netease/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/glide/Registry;->getSourceEncoder(Ljava/lang/Object;)Lcom/netease/glide/load/Encoder;

    move-result-object p1

    return-object p1
.end method

.method getTranscodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    return-object v0
.end method

.method getTransformation(Ljava/lang/Class;)Lcom/netease/glide/load/Transformation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lcom/netease/glide/load/Transformation<",
            "TZ;>;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/glide/load/Transformation;

    if-nez v0, :cond_1

    .line 157
    iget-object v1, p0, Lcom/netease/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/glide/load/Transformation;

    :cond_1
    if-nez v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->isTransformationRequired:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 167
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing transformation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_3
    :goto_0
    invoke-static {}, Lcom/netease/glide/load/resource/UnitTransformation;->get()Lcom/netease/glide/load/resource/UnitTransformation;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method getWidth()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->width:I

    return v0
.end method

.method hasLoadPath(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1}, Lcom/netease/glide/load/engine/DecodeHelper;->getLoadPath(Ljava/lang/Class;)Lcom/netease/glide/load/engine/LoadPath;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method init(Lcom/netease/glide/GlideContext;Ljava/lang/Object;Lcom/netease/glide/load/Key;IILcom/netease/glide/load/engine/DiskCacheStrategy;Ljava/lang/Class;Ljava/lang/Class;Lcom/netease/glide/Priority;Lcom/netease/glide/load/Options;Ljava/util/Map;ZZLcom/netease/glide/load/engine/DecodeJob$DiskCacheProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/netease/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/netease/glide/load/Key;",
            "II",
            "Lcom/netease/glide/load/engine/DiskCacheStrategy;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/netease/glide/Priority;",
            "Lcom/netease/glide/load/Options;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/netease/glide/load/Transformation<",
            "*>;>;ZZ",
            "Lcom/netease/glide/load/engine/DecodeJob$DiskCacheProvider;",
            ")V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/netease/glide/load/engine/DecodeHelper;->glideContext:Lcom/netease/glide/GlideContext;

    .line 63
    iput-object p2, p0, Lcom/netease/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    .line 64
    iput-object p3, p0, Lcom/netease/glide/load/engine/DecodeHelper;->signature:Lcom/netease/glide/load/Key;

    .line 65
    iput p4, p0, Lcom/netease/glide/load/engine/DecodeHelper;->width:I

    .line 66
    iput p5, p0, Lcom/netease/glide/load/engine/DecodeHelper;->height:I

    .line 67
    iput-object p6, p0, Lcom/netease/glide/load/engine/DecodeHelper;->diskCacheStrategy:Lcom/netease/glide/load/engine/DiskCacheStrategy;

    .line 68
    iput-object p7, p0, Lcom/netease/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    .line 69
    iput-object p14, p0, Lcom/netease/glide/load/engine/DecodeHelper;->diskCacheProvider:Lcom/netease/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 70
    iput-object p8, p0, Lcom/netease/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    .line 71
    iput-object p9, p0, Lcom/netease/glide/load/engine/DecodeHelper;->priority:Lcom/netease/glide/Priority;

    .line 72
    iput-object p10, p0, Lcom/netease/glide/load/engine/DecodeHelper;->options:Lcom/netease/glide/load/Options;

    .line 73
    iput-object p11, p0, Lcom/netease/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    .line 74
    iput-boolean p12, p0, Lcom/netease/glide/load/engine/DecodeHelper;->isTransformationRequired:Z

    .line 75
    iput-boolean p13, p0, Lcom/netease/glide/load/engine/DecodeHelper;->isScaleOnlyOrNoTransform:Z

    return-void
.end method

.method isResourceEncoderAvailable(Lcom/netease/glide/load/engine/Resource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/glide/load/engine/Resource<",
            "*>;)Z"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->glideContext:Lcom/netease/glide/GlideContext;

    invoke-virtual {v0}, Lcom/netease/glide/GlideContext;->getRegistry()Lcom/netease/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/glide/Registry;->isResourceEncoderAvailable(Lcom/netease/glide/load/engine/Resource;)Z

    move-result p1

    return p1
.end method

.method isScaleOnlyOrNoTransform()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/netease/glide/load/engine/DecodeHelper;->isScaleOnlyOrNoTransform:Z

    return v0
.end method

.method isSourceKey(Lcom/netease/glide/load/Key;)Z
    .locals 5

    .line 193
    invoke-virtual {p0}, Lcom/netease/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 196
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/glide/load/model/ModelLoader$LoadData;

    .line 197
    iget-object v4, v4, Lcom/netease/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/netease/glide/load/Key;

    invoke-interface {v4, p1}, Lcom/netease/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
