.class final Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PluginParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/server/PluginParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MetaDataHandler"
.end annotation


# static fields
.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PLUGIN:Ljava/lang/String; = "plugin"


# instance fields
.field private mInDomain:Z

.field private final mMetaData:Landroid/os/Bundle;

.field public requirementInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 281
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->mMetaData:Landroid/os/Bundle;

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->mInDomain:Z

    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 349
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 340
    const-string v0, "plugin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->mInDomain:Z

    .line 343
    :cond_0
    const-string v0, "requires"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->mMetaData:Landroid/os/Bundle;

    const-string v1, "requires"

    iget-object v2, p0, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->requirementInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 346
    :cond_1
    return-void
.end method

.method public getMetaData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->mMetaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
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
    const/4 v5, 0x0

    .line 300
    const-string v4, "plugin"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->mInDomain:Z

    .line 303
    :cond_0
    iget-boolean v4, p0, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->mInDomain:Z

    if-nez v4, :cond_2

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 307
    :cond_2
    const-string v4, "item"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "requires"

    .line 308
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "requireInfo"

    .line 309
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    :cond_3
    const-string v4, "item"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 314
    const-string v4, "name"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v4, "value"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "value":Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 319
    iget-object v4, p0, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    const-string v4, "requires"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 321
    iget-object v4, p0, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->requirementInfos:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 322
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->requirementInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 324
    :cond_5
    const-string v4, "requireInfo"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 325
    const-string v4, "id"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 329
    new-instance v2, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;

    invoke-direct {v2}, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;-><init>()V

    .line 330
    .local v2, "requirementInfo":Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;
    iput-object v0, v2, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;->id:Ljava/lang/String;

    .line 331
    const-string v4, "minVersion"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/tencent/component/plugin/server/PluginParser;->access$000(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;->minVersion:I

    .line 332
    const-string v4, "maxVersion"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/tencent/component/plugin/server/PluginParser;->access$000(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/tencent/component/plugin/PluginInfo$RequirementInfo;->maxVersion:I

    .line 333
    iget-object v4, p0, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->requirementInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
