.class final Lcom/google/android/gms/tagmanager/zze;
.super Lcom/google/android/gms/tagmanager/zzbt;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# static fields
.field private static final zza:Ljava/lang/String;


# instance fields
.field private final zzb:Lcom/google/android/gms/tagmanager/zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zza;->zza:Lcom/google/android/gms/internal/gtm/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zze;->zza:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzd;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/zze;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzbt;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zze;->zzb:Lcom/google/android/gms/tagmanager/zzd;

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zze;->zzb:Lcom/google/android/gms/tagmanager/zzd;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzd;->zzc()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)Lcom/google/android/gms/internal/gtm/zzam;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zze;->zzb:Lcom/google/android/gms/tagmanager/zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzd;->zzc()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfu;->zza()Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfu;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final zzb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
