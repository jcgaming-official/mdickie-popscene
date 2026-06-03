.class public final Lcom/google/android/gms/tagmanager/InstallReferrerReceiver;
.super Lcom/google/android/gms/analytics/CampaignTrackingReceiver;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/tagmanager/zzcw;->zzd(Ljava/lang/String;)V

    const-string v0, "gtm_install_referrer"

    const-string v1, "referrer"

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/tagmanager/zzff;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/tagmanager/zzcw;->zzc(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
