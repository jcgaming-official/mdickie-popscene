.class public abstract Lcom/harman/air/scout/companion/IscoutAidlInterface$Stub;
.super Landroid/os/Binder;
.source "IscoutAidlInterface.java"

# interfaces
.implements Lcom/harman/air/scout/companion/IscoutAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/harman/air/scout/companion/IscoutAidlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/harman/air/scout/companion/IscoutAidlInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getScoutConfigure:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.harman.air.scout.companion.IscoutAidlInterface"

    .line 30
    invoke-virtual {p0, p0, v0}, Lcom/harman/air/scout/companion/IscoutAidlInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/harman/air/scout/companion/IscoutAidlInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.harman.air.scout.companion.IscoutAidlInterface"

    .line 41
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    instance-of v1, v0, Lcom/harman/air/scout/companion/IscoutAidlInterface;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/harman/air/scout/companion/IscoutAidlInterface;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lcom/harman/air/scout/companion/IscoutAidlInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/harman/air/scout/companion/IscoutAidlInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.harman.air.scout.companion.IscoutAidlInterface"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/harman/air/scout/companion/IscoutAidlInterface$Stub;->getScoutConfigure()Ljava/util/Map;

    move-result-object p1

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return v1

    .line 61
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
