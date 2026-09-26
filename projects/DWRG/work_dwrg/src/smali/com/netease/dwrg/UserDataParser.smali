.class public Lcom/netease/dwrg/UserDataParser;
.super Ljava/lang/Object;
.source "UserDataParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/dwrg/UserDataParser$XMLHandler;
    }
.end annotation


# instance fields
.field public m_has_timestamp:Z

.field public m_timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netease/dwrg/UserDataParser;->m_timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/netease/dwrg/UserDataParser;->m_has_timestamp:Z

    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 103
    .local v2, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/netease/dwrg/UserDataParser$XMLHandler;

    invoke-direct {v1, p0}, Lcom/netease/dwrg/UserDataParser$XMLHandler;-><init>(Lcom/netease/dwrg/UserDataParser;)V

    .line 104
    .local v1, "handler":Lcom/netease/dwrg/UserDataParser$XMLHandler;
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 105
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 106
    iget-boolean v3, v1, Lcom/netease/dwrg/UserDataParser$XMLHandler;->m_real_has_timestamp:Z

    iput-boolean v3, p0, Lcom/netease/dwrg/UserDataParser;->m_has_timestamp:Z

    .line 107
    iget-object v3, v1, Lcom/netease/dwrg/UserDataParser$XMLHandler;->m_timestamp:Ljava/lang/String;

    iput-object v3, p0, Lcom/netease/dwrg/UserDataParser;->m_timestamp:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1    # "handler":Lcom/netease/dwrg/UserDataParser$XMLHandler;
    .end local v2    # "xmlReader":Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    const-string v3, "NeoXDevice"

    const-string v4, "PlatformConfigParser parse failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
