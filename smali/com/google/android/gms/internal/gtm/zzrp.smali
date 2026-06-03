.class public final Lcom/google/android/gms/internal/gtm/zzrp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# instance fields
.field final zza:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzse;

.field private final zzd:Lcom/google/android/gms/common/util/Clock;

.field private final zze:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzse;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/gtm/zzse;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/gtm/zzrp;->zza:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrp;->zzb:Landroid/content/Context;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzrp;->zzd:Lcom/google/android/gms/common/util/Clock;

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzrp;->zzc:Lcom/google/android/gms/internal/gtm/zzse;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrp;->zze:Ljava/util/Map;

    return-void
.end method
