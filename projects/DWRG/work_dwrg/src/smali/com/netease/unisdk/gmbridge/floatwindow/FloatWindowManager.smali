.class public Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"


# static fields
.field public static ICON_HEIGHT:I = 0x0

.field public static ICON_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "gm_bridge FloatWindowManager"

.field private static sFloatBtnVisible:Z

.field private static sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

.field private static sGravity:I

.field public static sIconDirName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "gm_icon"

    sput-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sIconDirName:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatBtnVisible:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->hasCloseBtn(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->createCloseBtnInfo(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    move-result-object v0

    return-object v0
.end method

.method private static createCloseBtnInfo(Landroid/content/Context;)Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    new-instance v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    invoke-direct {v0}, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;-><init>()V

    .line 154
    .local v0, "closeBtnInfo":Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;
    const-string v1, "close"

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->url:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "uni_gm_f_close"

    invoke-static {p0, v2}, Lcom/netease/unisdk/gmbridge/utils/ResIdReader;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->name:Ljava/lang/String;

    .line 156
    const-string v1, "uni_gm_f_close"

    invoke-static {p0, v1}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    .line 157
    iget-object v1, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sput v1, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_WIDTH:I

    .line 158
    iget-object v1, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sput v1, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_HEIGHT:I

    .line 159
    return-object v0
.end method

.method public static destroyFloatWindow()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->destroy()V

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .line 112
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->clearBtnInfos()V

    goto :goto_0
.end method

.method private static downloadIcon(Ljava/lang/String;Ljava/io/File;)Z
    .locals 12
    .param p0, "iconUrl"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 197
    :try_start_0
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v9, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    .line 198
    .local v6, "request":Lokhttp3/Request;
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 199
    .local v1, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v1, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    invoke-interface {v9}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7

    .line 200
    .local v7, "response":Lokhttp3/Response;
    invoke-virtual {v7}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    .line 201
    .local v3, "in":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 202
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 204
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-lez v4, :cond_0

    .line 205
    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v0    # "buf":[B
    .end local v1    # "client":Lokhttp3/OkHttpClient;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "len":I
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "request":Lokhttp3/Request;
    .end local v7    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "gm_bridge FloatWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "downloadIcon error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/netease/unisdk/gmbridge/log/NgLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v8

    .line 207
    .restart local v0    # "buf":[B
    .restart local v1    # "client":Lokhttp3/OkHttpClient;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "len":I
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "request":Lokhttp3/Request;
    .restart local v7    # "response":Lokhttp3/Response;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 208
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public static getBtnIcon(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "btnInfo"    # Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;
    .param p2, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string v3, "gm_bridge FloatWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iconUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v3, "uni_gm_f_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    invoke-static {p0, p2}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p1, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 171
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sIconDirName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 175
    :cond_3
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .local v1, "iconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_WIDTH:I

    sget v5, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_HEIGHT:I

    invoke-static {v3, v4, v5}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p1, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 182
    :cond_4
    invoke-static {p2, v1}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->downloadIcon(Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 184
    const-string v3, "gm_bridge FloatWindowManager"

    const-string v4, "downloadIcon iconUrl success"

    invoke-static {v3, v4}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_WIDTH:I

    sget v5, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->ICON_HEIGHT:I

    invoke-static {v3, v4, v5}, Lcom/netease/unisdk/gmbridge/utils/BitmapUtil;->decodeFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p1, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->iconBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 187
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method

.method private static hasCloseBtn(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "btnInfos":Ljava/util/List;, "Ljava/util/List<Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;

    .line 145
    .local v0, "btnInfo":Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;
    const-string v2, "close"

    iget-object v3, v0, Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const/4 v1, 0x1

    .line 149
    .end local v0    # "btnInfo":Lcom/netease/unisdk/gmbridge/floatwindow/BtnInfo;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hideExpandLayout()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->hideExpandLayout()V

    .line 121
    :cond_0
    return-void
.end method

.method public static initGmFloatWindow(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gravity"    # I

    .prologue
    .line 46
    sput p1, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sGravity:I

    .line 47
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-direct {v0, p0, p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    .line 50
    :cond_0
    sget-boolean v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatBtnVisible:Z

    if-eqz v0, :cond_1

    .line 51
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->show()V

    .line 53
    :cond_1
    return-void
.end method

.method public static isRedMenu(Ljava/lang/String;)Z
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    .line 91
    .local v0, "dataManager":Lcom/netease/unisdk/gmbridge/data/DataManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->isRedMenu(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadBtnInfos(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;

    .prologue
    .line 124
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    new-instance v1, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager$1;

    invoke-direct {v1, p0, p1}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager$1;-><init>(Landroid/content/Context;Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getBtnInfos(Lcom/netease/unisdk/gmbridge/data/DataManager$IDataCallback;)V

    .line 141
    return-void
.end method

.method public static onPause()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "gm_bridge FloatWindowManager"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->hide()V

    goto :goto_0
.end method

.method public static onResume()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "gm_bridge FloatWindowManager"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/netease/unisdk/gmbridge/log/NgLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    sget-boolean v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatBtnVisible:Z

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->show()V

    goto :goto_0
.end method

.method public static removeRedMenuIds(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;->sDataManager:Lcom/netease/unisdk/gmbridge/data/DataManager;

    .line 81
    .local v0, "dataManager":Lcom/netease/unisdk/gmbridge/data/DataManager;
    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {v0, p0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->removeRedId(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/data/DataManager;->getRedIds()[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "ids":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 85
    sget-object v2, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v2}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->hideRed()V

    goto :goto_0
.end method

.method public static setFloatBtnVisible(Z)V
    .locals 1
    .param p0, "v"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatBtnVisible:Z

    .line 57
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    if-eqz p0, :cond_2

    .line 59
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->show()V

    goto :goto_0

    .line 62
    :cond_2
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->hide()V

    goto :goto_0
.end method

.method public static showRed(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "redMenuIds"    # [Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    if-nez v0, :cond_1

    .line 71
    sget v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sGravity:I

    if-nez v0, :cond_0

    .line 72
    const/16 v0, 0x53

    sput v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sGravity:I

    .line 74
    :cond_0
    sget v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sGravity:I

    invoke-static {p0, v0}, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->initGmFloatWindow(Landroid/content/Context;I)V

    .line 76
    :cond_1
    sget-object v0, Lcom/netease/unisdk/gmbridge/floatwindow/FloatWindowManager;->sFloatWindow:Lcom/netease/unisdk/gmbridge/view/FloatWindow;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge/view/FloatWindow;->showRed([Ljava/lang/String;)V

    .line 77
    return-void
.end method
