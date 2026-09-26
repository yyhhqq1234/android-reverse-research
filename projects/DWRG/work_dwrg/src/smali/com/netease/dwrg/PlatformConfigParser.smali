.class public Lcom/netease/dwrg/PlatformConfigParser;
.super Ljava/lang/Object;
.source "PlatformConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;,
        Lcom/netease/dwrg/PlatformConfigParser$StringVariable;,
        Lcom/netease/dwrg/PlatformConfigParser$IntVariable;,
        Lcom/netease/dwrg/PlatformConfigParser$Variable;
    }
.end annotation


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_options:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netease/dwrg/PlatformConfigParser$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    .line 160
    iput-object p1, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_context:Landroid/content/Context;

    .line 161
    return-void
.end method

.method private createTempFile()Ljava/io/File;
    .locals 6

    .prologue
    .line 317
    :try_start_0
    iget-object v4, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 318
    .local v1, "outputDir":Ljava/io/File;
    const-string v4, "EncrytedPlatformConfig"

    const-string v5, "xml"

    invoke-static {v4, v5, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 320
    .local v2, "outputFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 321
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 322
    .local v3, "parent":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 323
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 325
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v1    # "outputDir":Ljava/io/File;
    .end local v2    # "outputFile":Ljava/io/File;
    .end local v3    # "parent":Ljava/io/File;
    :cond_1
    :goto_0
    return-object v2

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "NeoXDevice"

    const-string v5, "PlatformConfigParser create temp file failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private decryptData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/netease/dwrg/PlatformConfigParser;->encryptData([B)V

    .line 342
    return-void
.end method

.method private decryptFile(Ljava/io/InputStream;)Ljava/io/File;
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 293
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 294
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 296
    .local v4, "readCount":I
    :try_start_0
    invoke-direct {p0}, Lcom/netease/dwrg/PlatformConfigParser;->createTempFile()Ljava/io/File;

    move-result-object v1

    .line 297
    .local v1, "decryptedFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 299
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 300
    invoke-direct {p0, v0}, Lcom/netease/dwrg/PlatformConfigParser;->decryptData([B)V

    .line 301
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    .end local v1    # "decryptedFile":Ljava/io/File;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 310
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "NeoXDevice"

    const-string v6, "PlatformConfigParser decryptFile failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v1, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1

    .line 304
    .restart local v1    # "decryptedFile":Ljava/io/File;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 305
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 306
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private encryptData([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 336
    aget-byte v1, p1, v0

    xor-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    return-void
.end method


# virtual methods
.method public addVariable(Lcom/netease/dwrg/PlatformConfigParser$Variable;)V
    .locals 2
    .param p1, "v"    # Lcom/netease/dwrg/PlatformConfigParser$Variable;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/netease/dwrg/PlatformConfigParser$Variable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public addVariable(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    new-instance v1, Lcom/netease/dwrg/PlatformConfigParser$IntVariable;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/dwrg/PlatformConfigParser$IntVariable;-><init>(Lcom/netease/dwrg/PlatformConfigParser;Ljava/lang/String;I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public addVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    new-instance v1, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/dwrg/PlatformConfigParser$StringVariable;-><init>(Lcom/netease/dwrg/PlatformConfigParser;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public getOptions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 365
    iget-object v3, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 368
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 369
    .local v2, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;

    iget-object v3, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_variables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/netease/dwrg/PlatformConfigParser;->m_options:Ljava/util/HashMap;

    invoke-direct {v1, p0, v3, v4}, Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;-><init>(Lcom/netease/dwrg/PlatformConfigParser;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 370
    .local v1, "handler":Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 371
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v1    # "handler":Lcom/netease/dwrg/PlatformConfigParser$XMLHandler;
    .end local v2    # "xmlReader":Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NeoXDevice"

    const-string v4, "PlatformConfigParser parse failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public parse(Ljava/io/InputStream;Z)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "needDecrypt"    # Z

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, "decryptedFile":Ljava/io/File;
    if-eqz p2, :cond_0

    .line 348
    :try_start_0
    invoke-direct {p0, p1}, Lcom/netease/dwrg/PlatformConfigParser;->decryptFile(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v0

    .line 349
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    move-object p1, v2

    .line 352
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/dwrg/PlatformConfigParser;->parse(Ljava/io/InputStream;)V

    .line 354
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_1
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "NeoXDevice"

    const-string v4, "PlatformConfigParser parse failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
