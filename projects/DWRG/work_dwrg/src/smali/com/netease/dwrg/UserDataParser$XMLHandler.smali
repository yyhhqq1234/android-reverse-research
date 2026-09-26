.class Lcom/netease/dwrg/UserDataParser$XMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "UserDataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/dwrg/UserDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XMLHandler"
.end annotation


# instance fields
.field private m_buf:Ljava/lang/StringBuffer;

.field public m_has_timestamp:Z

.field public m_real_has_timestamp:Z

.field public m_timestamp:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/dwrg/UserDataParser;


# direct methods
.method public constructor <init>(Lcom/netease/dwrg/UserDataParser;)V
    .locals 2
    .param p1, "this$0"    # Lcom/netease/dwrg/UserDataParser;

    .prologue
    const/4 v1, 0x0

    .line 36
    iput-object p1, p0, Lcom/netease/dwrg/UserDataParser$XMLHandler;->this$0:Lcom/netease/dwrg/UserDataParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/netease/dwrg/UserDataParser$XMLHandler;->m_buf:Ljava/lang/StringBuffer;

    .line 38
    iput-boolean v1, p0, Lcom/netease/dwrg/UserDataParser$XMLHandler;->m_real_has_timestamp:Z

    .line 39
    iput-boolean v1, p0, Lcom/netease/dwrg/UserDataParser$XMLHandler;->m_has_timestamp:Z

    .line 40
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/netease/dwrg/UserDataParser$XMLHandler;->m_has_timestamp:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/netease/dwrg/UserDataParser$XMLHandler;->m_buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 60
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 66
    const-string v0, "package_timestamp"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/netease/dwrg/UserDataParser$XMLHandler;->m_buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/dwrg/UserDataParser$XMLHandler;->m_timestamp:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/netease/dwrg/UserDataParser$XMLHandler;->m_buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 70
    iput-boolean v1, p0, Lcom/netease/dwrg/UserDataParser$XMLHandler;->m_has_timestamp:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/dwrg/UserDataParser$XMLHandler;->m_real_has_timestamp:Z

    .line 75
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 46
    const-string v0, "package_timestamp"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/dwrg/UserDataParser$XMLHandler;->m_has_timestamp:Z

    .line 50
    :cond_0
    return-void
.end method
