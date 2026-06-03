.class final Lcom/google/android/gms/tagmanager/zzep;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzeq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/gtm/zzrz;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzdn;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrz;->zzc()Ljava/util/List;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrz;->zzh()Ljava/util/List;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrz;->zzc()Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrz;->zzb()Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrz;->zzh()Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrz;->zzg()Ljava/util/List;

    return-void
.end method
