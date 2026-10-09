.class final Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BuiltinPluginLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/server/BuiltinPluginLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PluginContentHandler"
.end annotation


# static fields
.field private static final ATTRIBUTE_ID:Ljava/lang/String; = "id"

.field private static final ATTRIBUTE_PATH:Ljava/lang/String; = "path"

.field private static final ATTRIBUTE_URI:Ljava/lang/String; = "uri"

.field private static final ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PLUGIN:Ljava/lang/String; = "plugin"


# instance fields
.field private mPluginDomain:Z

.field private final mPluginRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;->mPluginRecords:Ljava/util/ArrayList;

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;->mPluginDomain:Z

    return-void
.end method

.method private static toInteger(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 280
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 284
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 281
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 273
    const-string v0, "plugin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;->mPluginDomain:Z

    .line 276
    :cond_0
    return-void
.end method

.method public getPluginRecords()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;->mPluginRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
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
    .line 249
    const-string v1, "plugin"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;->mPluginDomain:Z

    .line 252
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;->mPluginDomain:Z

    if-nez v1, :cond_2

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    const-string v1, "item"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    new-instance v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;

    invoke-direct {v0}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;-><init>()V

    .line 261
    .local v0, "record":Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;
    const-string v1, "id"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->id:Ljava/lang/String;

    .line 262
    const-string v1, "path"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->path:Ljava/lang/String;

    .line 263
    const-string/jumbo v1, "uri"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->uri:Ljava/lang/String;

    .line 264
    const-string/jumbo v1, "version"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;->toInteger(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->version:I

    .line 265
    invoke-virtual {v0}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginRecord;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader$PluginContentHandler;->mPluginRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
