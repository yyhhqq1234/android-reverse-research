.class public final synthetic Lcom/onesignal/location/internal/controller/impl/HmsLocationController$start$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Lcom/onesignal/location/internal/controller/impl/HmsLocationController;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onesignal/location/internal/controller/impl/HmsLocationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$start$2$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$start$2$$ExternalSyntheticLambda0;->f$1:Lcom/onesignal/location/internal/controller/impl/HmsLocationController;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$start$2$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$start$2$$ExternalSyntheticLambda0;->f$1:Lcom/onesignal/location/internal/controller/impl/HmsLocationController;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, v1, p1}, Lcom/onesignal/location/internal/controller/impl/HmsLocationController$start$2;->$r8$lambda$9DV1FMM1G9A5DhFJn7rtZhvC1AI(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onesignal/location/internal/controller/impl/HmsLocationController;Landroid/location/Location;)V

    return-void
.end method
