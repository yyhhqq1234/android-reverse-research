.class public final Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;
.super Lcom/qq/taf/jce/JceStruct;
.source "UKMarker.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

.field static cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field static cache_infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

.field static cache_position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;


# instance fields
.field public icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

.field public id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

.field public infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

.field public position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->$assertionsDisabled:Z

    .line 135
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 139
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->cache_position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 143
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->cache_icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    .line 147
    new-instance v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    invoke-direct {v0}, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;-><init>()V

    sput-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->cache_infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    .line 148
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

    .line 70
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 23
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 25
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    .line 27
    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    .line 75
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 76
    iput-object p2, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 77
    iput-object p3, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    .line 78
    iput-object p4, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    .line 79
    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "UnityKit.UKMarker"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :cond_0
    return-object v0

    .line 115
    :catch_0
    move-exception v1

    .line 117
    sget-boolean v1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 161
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 162
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 163
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    const-string v2, "icon"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 164
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    const-string v2, "infoWindow"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 165
    return-void
.end method

.method public displaySimple(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 169
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 170
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 171
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 172
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 173
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->displaySimple(Lcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceDisplayer;

    .line 174
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    check-cast p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;

    .line 89
    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 90
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 91
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    .line 92
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    iget-object v2, p1, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    .line 93
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
    const-string v0, "com.tencent.friday.uikit.jce.UnityKit.UKMarker"

    return-object v0
.end method

.method public getIcon()Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    return-object v0
.end method

.method public getId()Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    return-object v0
.end method

.method public getInfoWindow()Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    return-object v0
.end method

.method public getPosition()Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 100
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 152
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->cache_id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 153
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->cache_position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 154
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->cache_icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    .line 155
    sget-object v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->cache_infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    iput-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    .line 156
    return-void
.end method

.method public setIcon(Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    .line 57
    return-void
.end method

.method public setId(Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    .line 37
    return-void
.end method

.method public setInfoWindow(Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    .line 67
    return-void
.end method

.method public setPosition(Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    .line 47
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->id:Lcom/tencent/friday/uikit/jce/UnityKit/UKInt;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 125
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->position:Lcom/tencent/friday/uikit/jce/UnityKit/UKCoordinate;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 126
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->icon:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerIcon;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 127
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/tencent/friday/uikit/jce/UnityKit/UKMarker;->infoWindow:Lcom/tencent/friday/uikit/jce/UnityKit/UKMarkerInfoWindow;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 131
    :cond_0
    return-void
.end method
