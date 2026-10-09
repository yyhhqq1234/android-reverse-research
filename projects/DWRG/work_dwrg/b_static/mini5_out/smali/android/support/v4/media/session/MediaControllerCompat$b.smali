.class Landroid/support/v4/media/session/MediaControllerCompat$b;
.super Landroidx/core/app/ComponentActivity$ExtraData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/support/v4/media/session/MediaControllerCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/ComponentActivity$ExtraData;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method

.method private a()Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$b;->a:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method
