.class public final synthetic Lcom/google/android/gms/internal/measurement/zzgv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzhb;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/measurement/zzgs;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzgs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgv;->zza:Lcom/google/android/gms/internal/measurement/zzgs;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgv;->zza:Lcom/google/android/gms/internal/measurement/zzgs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgs;->zzb()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
