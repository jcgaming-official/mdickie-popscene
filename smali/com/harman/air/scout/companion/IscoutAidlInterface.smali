.class public interface abstract Lcom/harman/air/scout/companion/IscoutAidlInterface;
.super Ljava/lang/Object;
.source "IscoutAidlInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/harman/air/scout/companion/IscoutAidlInterface$Stub;,
        Lcom/harman/air/scout/companion/IscoutAidlInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.harman.air.scout.companion.IscoutAidlInterface"


# virtual methods
.method public abstract getScoutConfigure()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
