.class Lcom/tencent/msdk/webview/X5WebViewActivity$1;
.super Ljava/util/HashMap;
.source "X5WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 306
    const-string v0, ".asf"

    const-string/jumbo v1, "video/x-ms-asf"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v0, ".asx"

    const-string/jumbo v1, "video/x-ms-asf"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v0, ".avi"

    const-string/jumbo v1, "video/x-msvideo"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v0, ".bin"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v0, ".cco"

    const-string v1, "application/x-cocoa"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v0, ".crt"

    const-string v1, "application/x-x509-ca-cert"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v0, ".css"

    const-string/jumbo v1, "text/css"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v0, ".deb"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, ".der"

    const-string v1, "application/x-x509-ca-cert"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v0, ".dll"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v0, ".dmg"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v0, ".ear"

    const-string v1, "application/java-archive"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v0, ".eot"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v0, ".exe"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v0, ".flv"

    const-string/jumbo v1, "video/x-flv"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v0, ".gif"

    const-string v1, "image/gif"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v0, ".hqx"

    const-string v1, "application/mac-binhex40"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v0, ".htc"

    const-string/jumbo v1, "text/x-component"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v0, ".htm"

    const-string/jumbo v1, "text/html"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v0, ".html"

    const-string/jumbo v1, "text/html"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v0, ".ico"

    const-string v1, "image/x-icon"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v0, ".img"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v0, ".iso"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v0, ".jar"

    const-string v1, "application/java-archive"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v0, ".jardiff"

    const-string v1, "application/x-java-archive-diff"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v0, ".jng"

    const-string v1, "image/x-jng"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v0, ".jnlp"

    const-string v1, "application/x-java-jnlp-file"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v0, ".jpeg"

    const-string v1, "image/jpeg"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v0, ".jpg"

    const-string v1, "image/jpeg"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v0, ".js"

    const-string v1, "application/x-javascript"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v0, ".mml"

    const-string/jumbo v1, "text/mathml"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v0, ".mng"

    const-string/jumbo v1, "video/x-mng"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v0, ".mov"

    const-string/jumbo v1, "video/quicktime"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v0, ".mp3"

    const-string v1, "audio/mpeg"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v0, ".mpeg"

    const-string/jumbo v1, "video/mpeg"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v0, ".mpg"

    const-string/jumbo v1, "video/mpeg"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v0, ".msi"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v0, ".msm"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v0, ".msp"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v0, ".pdb"

    const-string v1, "application/x-pilot"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v0, ".pdf"

    const-string v1, "application/pdf"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v0, ".pem"

    const-string v1, "application/x-x509-ca-cert"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v0, ".pl"

    const-string v1, "application/x-perl"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v0, ".pm"

    const-string v1, "application/x-perl"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v0, ".png"

    const-string v1, "image/png"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v0, ".prc"

    const-string v1, "application/x-pilot"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v0, ".ra"

    const-string v1, "audio/x-realaudio"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v0, ".rar"

    const-string v1, "application/x-rar-compressed"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v0, ".rpm"

    const-string v1, "application/x-redhat-package-manager"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v0, ".rss"

    const-string/jumbo v1, "text/xml"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v0, ".run"

    const-string v1, "application/x-makeself"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v0, ".sea"

    const-string v1, "application/x-sea"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v0, ".shtml"

    const-string/jumbo v1, "text/html"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v0, ".stm"

    const-string/jumbo v1, "text/html"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v0, ".shtm"

    const-string/jumbo v1, "text/html"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v0, ".sit"

    const-string v1, "application/x-stuffit"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v0, ".swf"

    const-string v1, "application/x-shockwave-flash"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v0, ".tcl"

    const-string v1, "application/x-tcl"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v0, ".tk"

    const-string v1, "application/x-tcl"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v0, ".txt"

    const-string/jumbo v1, "text/plain"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v0, ".war"

    const-string v1, "application/java-archive"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v0, ".wbmp"

    const-string v1, "image/vnd.wap.wbmp"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v0, ".wmv"

    const-string/jumbo v1, "video/x-ms-wmv"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v0, ".xml"

    const-string/jumbo v1, "text/xml"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v0, ".xpi"

    const-string v1, "application/x-xpinstall"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v0, ".zip"

    const-string v1, "application/zip"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void
.end method
