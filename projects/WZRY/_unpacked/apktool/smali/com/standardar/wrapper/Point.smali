.class public Lcom/standardar/wrapper/Point;
.super Lcom/standardar/wrapper/TrackableBase;
.source "Point.java"


# direct methods
.method constructor <init>(JLcom/standardar/wrapper/Session;)V
    .locals 1
    .param p1, "trackablePtr"    # J
    .param p3, "session"    # Lcom/standardar/wrapper/Session;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/standardar/wrapper/TrackableBase;-><init>(JLcom/standardar/wrapper/Session;)V

    .line 10
    return-void
.end method
