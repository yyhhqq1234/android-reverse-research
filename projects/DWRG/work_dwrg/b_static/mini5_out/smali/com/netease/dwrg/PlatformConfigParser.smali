.class public Lcom/netease/dwrg/PlatformConfigParser;
.super Ljava/lang/Object;
.source "PlatformConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/dwrg/PlatformConfigParser$Variable;,
        Lcom/netease/dwrg/PlatformConfigParser$IntVariable;,
        Lcom/netease/dwrg/PlatformConfigParser$StringVariable;,
        Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;
    }
.end annotation


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/dwrg/PlatformConfigParser$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    .line 171
    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_context:Landroid/content/Context;

    return-void
.end method

.method private createTempFile()Ljava/io/File;
    .locals 3

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 385
    const-string v1, "EncrytedPlatformConfig"

    const-string v2, "xml"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 392
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    .line 396
    :catch_0
    const-string v0, "NeoXDevice"

    const-string v1, "PlatformConfigParser create temp file failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private decryptData([B)V
    .locals 0

    .line 408
    invoke-direct {p0, p1}, Lcom/netease/dwrg/PlatformConfigParser;->encryptData([B)V

    return-void
.end method

.method private decryptFile(Ljava/io/InputStream;)Ljava/io/File;
    .locals 5

    const/16 v0, 0x400

    .line 360
    new-array v0, v0, [B

    .line 363
    :try_start_0
    invoke-direct {p0}, Lcom/netease/dwrg/PlatformConfigParser;->createTempFile()Ljava/io/File;

    move-result-object v1

    .line 364
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 366
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 367
    invoke-direct {p0, v0}, Lcom/netease/dwrg/PlatformConfigParser;->decryptData([B)V

    const/4 v4, 0x0

    .line 368
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 372
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 373
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 377
    :catch_0
    const-string p1, "NeoXDevice"

    const-string v0, "PlatformConfigParser decryptFile failed!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private encryptData([B)V
    .locals 2

    const/4 v0, 0x0

    .line 402
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 403
    aget-byte v1, p1, v0

    xor-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addVariable(Lcom/netease/dwrg/PlatformConfigParser$Variable;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/netease/dwrg/PlatformConfigParser$Variable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addVariable(Ljava/lang/String;I)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    new-instance v1, Lcom/netease/dwrg/PlatformConfigParser$IntVariable;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/dwrg/PlatformConfigParser$IntVariable;-><init>(Lcom/netease/dwrg/PlatformConfigParser;Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    new-instance v1, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;-><init>(Lcom/netease/dwrg/PlatformConfigParser;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getOptions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 4

    .line 432
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 435
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 436
    new-instance v1, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;

    iget-object v2, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    invoke-direct {v1, p0, v2, v3}, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;-><init>(Lcom/netease/dwrg/PlatformConfigParser;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 437
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 438
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    const-string p1, "NeoXDevice"

    const-string v0, "PlatformConfigParser parse failed!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public parse(Ljava/io/InputStream;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 415
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/dwrg/PlatformConfigParser;->decryptFile(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object p1

    .line 416
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/PlatformConfigParser;->parse(Ljava/io/InputStream;)V

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 425
    :catch_0
    const-string p1, "NeoXDevice"

    const-string p2, "PlatformConfigParser parse failed!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method
