.class public final synthetic Lcom/google/android/gms/measurement/internal/zzku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/measurement/internal/zzkr;

.field private synthetic zzb:I

.field private synthetic zzc:Ljava/lang/Exception;

.field private synthetic zzd:[B

.field private synthetic zze:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzkr;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Lcom/google/android/gms/measurement/internal/zzkr;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzc:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzku;->zze:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Lcom/google/android/gms/measurement/internal/zzkr;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzc:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzd:[B

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzku;->zze:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzkr;->zza(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
