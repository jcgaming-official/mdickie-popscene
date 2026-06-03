.class public abstract Lcom/google/android/play/core/assetpacks/internal/i;
.super Lcom/google/android/play/core/assetpacks/internal/b;
.source "com.google.android.play:asset-delivery@@2.2.1"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/internal/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/play/core/assetpacks/internal/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 10
    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    invoke-static {p2, p1}, Lcom/google/android/play/core/assetpacks/internal/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback"

    .line 3
    invoke-interface {p4, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of v0, p3, Lcom/google/android/play/core/assetpacks/internal/k;

    if-eqz v0, :cond_1

    .line 4
    check-cast p3, Lcom/google/android/play/core/assetpacks/internal/k;

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/google/android/play/core/assetpacks/internal/k;

    invoke-direct {p3, p4}, Lcom/google/android/play/core/assetpacks/internal/k;-><init>(Landroid/os/IBinder;)V

    .line 5
    :goto_0
    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/internal/c;->b(Landroid/os/Parcel;)V

    .line 6
    invoke-virtual {p0, p1, p3}, Lcom/google/android/play/core/assetpacks/internal/i;->b(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/internal/k;)V

    goto :goto_2

    .line 7
    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/play/core/assetpacks/internal/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback"

    .line 9
    invoke-interface {p4, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of v0, p3, Lcom/google/android/play/core/assetpacks/internal/k;

    if-eqz v0, :cond_3

    .line 10
    check-cast p3, Lcom/google/android/play/core/assetpacks/internal/k;

    goto :goto_1

    :cond_3
    new-instance p3, Lcom/google/android/play/core/assetpacks/internal/k;

    invoke-direct {p3, p4}, Lcom/google/android/play/core/assetpacks/internal/k;-><init>(Landroid/os/IBinder;)V

    .line 11
    :goto_1
    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/internal/c;->b(Landroid/os/Parcel;)V

    .line 12
    invoke-virtual {p0, p1, p3}, Lcom/google/android/play/core/assetpacks/internal/i;->c(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/internal/k;)V

    :goto_2
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
