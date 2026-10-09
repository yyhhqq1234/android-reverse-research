.class public final Lgbsdk/android/support/v4/view/ViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/android/support/v4/view/ViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lgbsdk/android/support/v4/view/ViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lgbsdk/android/support/v4/view/ViewPager$SavedState;
    .locals 2

    .line 1420
    new-instance v0, Lgbsdk/android/support/v4/view/ViewPager$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgbsdk/android/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lgbsdk/android/support/v4/view/ViewPager$SavedState;
    .locals 1

    .line 1415
    new-instance v0, Lgbsdk/android/support/v4/view/ViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lgbsdk/android/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1412
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v4/view/ViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lgbsdk/android/support/v4/view/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 1412
    invoke-virtual {p0, p1, p2}, Lgbsdk/android/support/v4/view/ViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lgbsdk/android/support/v4/view/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lgbsdk/android/support/v4/view/ViewPager$SavedState;
    .locals 0

    .line 1424
    new-array p1, p1, [Lgbsdk/android/support/v4/view/ViewPager$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1412
    invoke-virtual {p0, p1}, Lgbsdk/android/support/v4/view/ViewPager$SavedState$1;->newArray(I)[Lgbsdk/android/support/v4/view/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method
