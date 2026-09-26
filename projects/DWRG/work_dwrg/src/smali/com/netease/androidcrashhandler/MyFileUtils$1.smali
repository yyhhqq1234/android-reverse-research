.class Lcom/netease/androidcrashhandler/MyFileUtils$1;
.super Ljava/lang/Object;
.source "MyFileUtils.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/MyFileUtils;->getFilesBySuffix(Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/MyFileUtils;

.field private final synthetic val$suffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/MyFileUtils;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/androidcrashhandler/MyFileUtils$1;->this$0:Lcom/netease/androidcrashhandler/MyFileUtils;

    iput-object p2, p0, Lcom/netease/androidcrashhandler/MyFileUtils$1;->val$suffix:Ljava/lang/String;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/netease/androidcrashhandler/MyFileUtils$1;->val$suffix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
