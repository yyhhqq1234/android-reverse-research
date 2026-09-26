.class Lcom/netease/dwrg/Launcher$CopyFile;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/dwrg/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CopyFile"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x40000


# instance fields
.field private m_buffer:[B

.field private m_copied_size:J

.field private m_copying_file:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/dwrg/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/dwrg/Launcher;)V
    .locals 2
    .param p1, "this$0"    # Lcom/netease/dwrg/Launcher;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/netease/dwrg/Launcher$CopyFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_copied_size:J

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    .line 845
    const/high16 v0, 0x40000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_buffer:[B

    return-void
.end method

.method private copyAsset(Ljava/lang/String;J)V
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileSize"    # J

    .prologue
    .line 857
    iget-object v9, p0, Lcom/netease/dwrg/Launcher$CopyFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v9}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/dwrg/Launcher;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 858
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    iget-wide v4, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_copied_size:J

    .line 861
    .local v4, "last_copied_size":J
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 862
    .local v2, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lcom/netease/dwrg/Launcher$CopyFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v9}, Lcom/netease/dwrg/Launcher;->access$900(Lcom/netease/dwrg/Launcher;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    .local v6, "outfile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 865
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 866
    .local v8, "parent":Ljava/io/File;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 868
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 870
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 872
    .end local v8    # "parent":Ljava/io/File;
    :cond_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 874
    .local v7, "outputstream":Ljava/io/FileOutputStream;
    :goto_0
    iget-object v9, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_buffer:[B

    invoke-virtual {v2, v9}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "length":I
    if-lez v3, :cond_2

    .line 876
    iget-object v9, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_buffer:[B

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 877
    iget-wide v10, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_copied_size:J

    int-to-long v12, v3

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_copied_size:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 883
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "length":I
    .end local v6    # "outfile":Ljava/io/File;
    .end local v7    # "outputstream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 885
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 886
    add-long v10, v4, p2

    iput-wide v10, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_copied_size:J

    .line 887
    const-string v9, "NeoXDevice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to copy asset file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 879
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "length":I
    .restart local v6    # "outfile":Ljava/io/File;
    .restart local v7    # "outputstream":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 880
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 881
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private copyInitPng()V
    .locals 15

    .prologue
    .line 892
    new-instance v9, Ljava/io/File;

    iget-object v12, p0, Lcom/netease/dwrg/Launcher$CopyFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v12}, Lcom/netease/dwrg/Launcher;->access$900(Lcom/netease/dwrg/Launcher;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "init.bm"

    invoke-direct {v9, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .local v9, "outFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 895
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 896
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x0

    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 897
    iget-object v12, p0, Lcom/netease/dwrg/Launcher$CopyFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v12}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v12

    invoke-virtual {v12}, Lcom/netease/dwrg/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget-object v13, p0, Lcom/netease/dwrg/Launcher$CopyFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v13}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v13

    const-string v14, "init"

    invoke-static {v13, v14}, Lcom/netease/dwrg/Launcher;->access$400(Lcom/netease/dwrg/Launcher;Ljava/lang/String;)I

    move-result v13

    invoke-static {v12, v13, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 899
    .local v3, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    mul-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x4

    add-int/lit8 v12, v12, 0x8

    add-int/lit8 v12, v12, 0x10

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 900
    .local v2, "bb":Ljava/nio/ByteBuffer;
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 901
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 902
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 903
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-ge v7, v12, :cond_1

    .line 905
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-ge v6, v12, :cond_0

    .line 907
    invoke-virtual {v3, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 908
    .local v4, "color":I
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 909
    .local v0, "a":I
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v11

    .line 910
    .local v11, "r":I
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 911
    .local v5, "g":I
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 912
    .local v1, "b":I
    invoke-static {v0, v1, v5, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 913
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 905
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 903
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v4    # "color":I
    .end local v5    # "g":I
    .end local v11    # "r":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 916
    .end local v6    # "i":I
    :cond_1
    iget-object v12, p0, Lcom/netease/dwrg/Launcher$CopyFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v12}, Lcom/netease/dwrg/Launcher;->access$700(Lcom/netease/dwrg/Launcher;)[F

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 917
    iget-object v12, p0, Lcom/netease/dwrg/Launcher$CopyFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v12}, Lcom/netease/dwrg/Launcher;->access$700(Lcom/netease/dwrg/Launcher;)[F

    move-result-object v12

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 918
    iget-object v12, p0, Lcom/netease/dwrg/Launcher$CopyFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v12}, Lcom/netease/dwrg/Launcher;->access$700(Lcom/netease/dwrg/Launcher;)[F

    move-result-object v12

    const/4 v13, 0x2

    aget v12, v12, v13

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 919
    iget-object v12, p0, Lcom/netease/dwrg/Launcher$CopyFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v12}, Lcom/netease/dwrg/Launcher;->access$700(Lcom/netease/dwrg/Launcher;)[F

    move-result-object v12

    const/4 v13, 0x3

    aget v12, v12, v13

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 923
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 924
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 925
    .local v10, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 926
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 927
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 937
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "j":I
    .end local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v10    # "outStream":Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    return-void

    .line 929
    .restart local v2    # "bb":Ljava/nio/ByteBuffer;
    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    .restart local v7    # "j":I
    .restart local v8    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v12

    .line 934
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    throw v12
.end method


# virtual methods
.method public getCopiedSize()J
    .locals 2

    .prologue
    .line 849
    iget-wide v0, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_copied_size:J

    return-wide v0
.end method

.method public getCopyingFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 940
    iput-wide v6, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_copied_size:J

    .line 941
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    .line 942
    iget-object v1, p0, Lcom/netease/dwrg/Launcher$CopyFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v1}, Lcom/netease/dwrg/Launcher;->access$1000(Lcom/netease/dwrg/Launcher;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 944
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/netease/dwrg/Launcher$AssetInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/dwrg/Launcher$AssetInfo;

    iget-object v1, v1, Lcom/netease/dwrg/Launcher$AssetInfo;->Path:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    .line 945
    iget-object v3, p0, Lcom/netease/dwrg/Launcher$CopyFile;->m_copying_file:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/dwrg/Launcher$AssetInfo;

    iget-wide v4, v1, Lcom/netease/dwrg/Launcher$AssetInfo;->Size:J

    invoke-direct {p0, v3, v4, v5}, Lcom/netease/dwrg/Launcher$CopyFile;->copyAsset(Ljava/lang/String;J)V

    goto :goto_0

    .line 948
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/netease/dwrg/Launcher$AssetInfo;>;"
    :cond_0
    const-string v1, "filelist.txt"

    invoke-direct {p0, v1, v6, v7}, Lcom/netease/dwrg/Launcher$CopyFile;->copyAsset(Ljava/lang/String;J)V

    .line 949
    invoke-direct {p0}, Lcom/netease/dwrg/Launcher$CopyFile;->copyInitPng()V

    .line 950
    iget-object v1, p0, Lcom/netease/dwrg/Launcher$CopyFile;->this$0:Lcom/netease/dwrg/Launcher;

    invoke-static {v1}, Lcom/netease/dwrg/Launcher;->access$100(Lcom/netease/dwrg/Launcher;)Lcom/netease/dwrg/Launcher;

    move-result-object v1

    new-instance v2, Lcom/netease/dwrg/Launcher$CopyFile$1;

    invoke-direct {v2, p0}, Lcom/netease/dwrg/Launcher$CopyFile$1;-><init>(Lcom/netease/dwrg/Launcher$CopyFile;)V

    invoke-virtual {v1, v2}, Lcom/netease/dwrg/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 959
    return-void
.end method
