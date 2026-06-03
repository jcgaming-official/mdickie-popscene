.class public final Lcom/google/android/gms/internal/measurement/zzor;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzoo;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/measurement/zzhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzg:Lcom/google/android/gms/internal/measurement/zzhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzh:Lcom/google/android/gms/internal/measurement/zzhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzi:Lcom/google/android/gms/internal/measurement/zzhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzj:Lcom/google/android/gms/internal/measurement/zzhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhh<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzk:Lcom/google/android/gms/internal/measurement/zzhh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhh<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhp;

    const-string v1, "com.google.android.gms.measurement"

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhi;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhp;-><init>(Landroid/net/Uri;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhp;->zzb()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhp;->zza()Lcom/google/android/gms/internal/measurement/zzhp;

    move-result-object v0

    const-string v1, "measurement.dma_consent.client"

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzor;->zza:Lcom/google/android/gms/internal/measurement/zzhh;

    const-string v1, "measurement.dma_consent.client_bow_check2"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzor;->zzb:Lcom/google/android/gms/internal/measurement/zzhh;

    const-string v1, "measurement.dma_consent.separate_service_calls_fix"

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzor;->zzc:Lcom/google/android/gms/internal/measurement/zzhh;

    const-string v1, "measurement.dma_consent.service"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzor;->zzd:Lcom/google/android/gms/internal/measurement/zzhh;

    const-string v1, "measurement.dma_consent.service_database_update_fix"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzor;->zze:Lcom/google/android/gms/internal/measurement/zzhh;

    const-string v1, "measurement.dma_consent.service_dcu_event"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzor;->zzf:Lcom/google/android/gms/internal/measurement/zzhh;

    const-string v1, "measurement.dma_consent.service_dcu_event2"

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzor;->zzg:Lcom/google/android/gms/internal/measurement/zzhh;

    const-string v1, "measurement.dma_consent.service_npa_remote_default"

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzor;->zzh:Lcom/google/android/gms/internal/measurement/zzhh;

    const-string v1, "measurement.dma_consent.service_split_batch_on_consent"

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzor;->zzi:Lcom/google/android/gms/internal/measurement/zzhh;

    const-string v1, "measurement.dma_consent.set_consent_inline_on_worker"

    .line 14
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzor;->zzj:Lcom/google/android/gms/internal/measurement/zzhh;

    const-string v1, "measurement.id.dma_consent.separate_service_calls_fix"

    const-wide/16 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhp;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzhh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzor;->zzk:Lcom/google/android/gms/internal/measurement/zzhh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzor;->zzc:Lcom/google/android/gms/internal/measurement/zzhh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhh;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()Z
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzor;->zze:Lcom/google/android/gms/internal/measurement/zzhh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhh;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzor;->zzg:Lcom/google/android/gms/internal/measurement/zzhh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhh;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzd()Z
    .locals 1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzor;->zzj:Lcom/google/android/gms/internal/measurement/zzhh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhh;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
