.class Lcom/netease/dwrg/MovieView$7;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/dwrg/MovieView;->playVideo(Ljava/lang/String;IIIIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/dwrg/MovieView;

.field final synthetic val$height:I

.field final synthetic val$in_asset:Z

.field final synthetic val$left:I

.field final synthetic val$top:I

.field final synthetic val$video_mode:I

.field final synthetic val$video_path:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/netease/dwrg/MovieView;IIIIIZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/dwrg/MovieView;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/netease/dwrg/MovieView$7;->this$0:Lcom/netease/dwrg/MovieView;

    iput p2, p0, Lcom/netease/dwrg/MovieView$7;->val$video_mode:I

    iput p3, p0, Lcom/netease/dwrg/MovieView$7;->val$left:I

    iput p4, p0, Lcom/netease/dwrg/MovieView$7;->val$top:I

    iput p5, p0, Lcom/netease/dwrg/MovieView$7;->val$width:I

    iput p6, p0, Lcom/netease/dwrg/MovieView$7;->val$height:I

    iput-boolean p7, p0, Lcom/netease/dwrg/MovieView$7;->val$in_asset:Z

    iput-object p8, p0, Lcom/netease/dwrg/MovieView$7;->val$video_path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 306
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$7;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$200(Lcom/netease/dwrg/MovieView;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$7;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 309
    iget v0, p0, Lcom/netease/dwrg/MovieView$7;->val$video_mode:I

    if-nez v0, :cond_1

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$7;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$600(Lcom/netease/dwrg/MovieView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$7;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$7;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$000(Lcom/netease/dwrg/MovieView;)Lcom/netease/dwrg/MovieDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/dwrg/MovieDialog;->show()V

    .line 327
    iget-boolean v0, p0, Lcom/netease/dwrg/MovieView$7;->val$in_asset:Z

    if-eqz v0, :cond_2

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$7;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$100(Lcom/netease/dwrg/MovieView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/dwrg/MovieView$7;->val$video_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 332
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$7;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 333
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$7;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_1
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$7;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$000(Lcom/netease/dwrg/MovieView;)Lcom/netease/dwrg/MovieDialog;

    move-result-object v0

    iget v1, p0, Lcom/netease/dwrg/MovieView$7;->val$left:I

    iget v2, p0, Lcom/netease/dwrg/MovieView$7;->val$top:I

    iget v3, p0, Lcom/netease/dwrg/MovieView$7;->val$width:I

    iget v4, p0, Lcom/netease/dwrg/MovieView$7;->val$height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/dwrg/MovieDialog;->setBounds(IIII)V

    goto :goto_0

    .line 337
    :catch_0
    move-exception v8

    .line 339
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 340
    const-string v0, "NeoX:MediaPlayer "

    const-string v1, "play video in asset error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 346
    .end local v8    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_1
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netease/dwrg/MovieView$7;->val$video_path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 347
    .local v9, "fileStream":Ljava/io/FileInputStream;
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 348
    .local v7, "descriptor":Ljava/io/FileDescriptor;
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$7;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 349
    iget-object v0, p0, Lcom/netease/dwrg/MovieView$7;->this$0:Lcom/netease/dwrg/MovieView;

    invoke-static {v0}, Lcom/netease/dwrg/MovieView;->access$300(Lcom/netease/dwrg/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 350
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 353
    .end local v7    # "descriptor":Ljava/io/FileDescriptor;
    .end local v9    # "fileStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v8

    .line 355
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    const-string v0, "NeoX:MediaPlayer "

    const-string v1, "play video error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
