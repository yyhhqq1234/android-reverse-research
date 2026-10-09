.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKPageMethod_addView.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

.field static cache_checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

.field static cache_imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

.field static cache_label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

.field static cache_loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

.field static cache_mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

.field static cache_tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

.field static cache_textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

.field static cache_viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;


# instance fields
.field public button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

.field public checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

.field public imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

.field public label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

.field public loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

.field public mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

.field public tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

.field public textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

.field public viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->$assertionsDisabled:Z

    .line 234
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    .line 238
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    .line 242
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 246
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    .line 250
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    .line 254
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    .line 258
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    .line 262
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    .line 266
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    .line 267
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    .line 37
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    .line 29
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    .line 31
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    .line 33
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    .line 35
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    .line 37
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    .line 135
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    .line 136
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    .line 137
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 138
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    .line 139
    iput-object p5, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    .line 140
    iput-object p6, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    .line 141
    iput-object p7, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    .line 142
    iput-object p8, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    .line 143
    iput-object p9, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    .line 144
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKPageMethod_addView"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 183
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 189
    :cond_0
    return-object v0

    .line 185
    :catch_0
    move-exception v1

    .line 187
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 284
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 285
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    const-string v2, "label"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 286
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    const-string v2, "button"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 287
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    const-string v2, "imageView"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 288
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    const-string v2, "loadingView"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 289
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    const-string v2, "mapView"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 290
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    const-string/jumbo v2, "tableView"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 291
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    const-string/jumbo v2, "textBox"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 292
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    const-string v2, "checkBox"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 293
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    const-string/jumbo v2, "viewGroup"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 294
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 298
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 299
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 300
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 301
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 302
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 303
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 304
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 305
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 306
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 307
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 308
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 148
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;

    .line 154
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    .line 155
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    .line 156
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 157
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    .line 158
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    .line 159
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    .line 160
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    .line 161
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    .line 162
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    .line 163
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fullClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKPageMethod_addView"

    return-object v0
.end method

.method public getButton()Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    return-object v0
.end method

.method public getCheckBox()Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    return-object v0
.end method

.method public getImageView()Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    return-object v0
.end method

.method public getLabel()Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    return-object v0
.end method

.method public getLoadingView()Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    return-object v0
.end method

.method public getMapView()Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    return-object v0
.end method

.method public getTableView()Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    return-object v0
.end method

.method public getTextBox()Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    return-object v0
.end method

.method public getViewGroup()Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 170
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    .line 272
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    .line 273
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 274
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    .line 275
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    .line 276
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    .line 277
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    .line 278
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    .line 279
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->cache_viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    .line 280
    return-void
.end method

.method public setButton(Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    .line 57
    return-void
.end method

.method public setCheckBox(Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    .line 117
    return-void
.end method

.method public setImageView(Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    .line 67
    return-void
.end method

.method public setLabel(Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    .line 47
    return-void
.end method

.method public setLoadingView(Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    .line 77
    return-void
.end method

.method public setMapView(Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    .line 87
    return-void
.end method

.method public setTableView(Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    .line 97
    return-void
.end method

.method public setTextBox(Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    .line 107
    return-void
.end method

.method public setViewGroup(Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    .line 127
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->label:Lcom/tencent/friday/uikit/jce/UnityKit/UKLabel;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->button:Lcom/tencent/friday/uikit/jce/UnityKit/UKButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->imageView:Lcom/tencent/friday/uikit/jce/UnityKit/UKImageView;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->loadingView:Lcom/tencent/friday/uikit/jce/UnityKit/UKLoadingView;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->mapView:Lcom/tencent/friday/uikit/jce/UnityKit/UKMapView;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    if-eqz v0, :cond_5

    .line 216
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->tableView:Lcom/tencent/friday/uikit/jce/UnityKit/UKTableView;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    if-eqz v0, :cond_6

    .line 220
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->textBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKTextBox;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    if-eqz v0, :cond_7

    .line 224
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->checkBox:Lcom/tencent/friday/uikit/jce/UnityKit/UKCheckBox;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    if-eqz v0, :cond_8

    .line 228
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKPageMethod_addView;->viewGroup:Lcom/tencent/friday/uikit/jce/UnityKit/UKViewGroup;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 230
    :cond_8
    return-void
.end method
