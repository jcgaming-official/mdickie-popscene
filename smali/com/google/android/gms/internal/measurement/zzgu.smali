.class final Lcom/google/android/gms/internal/measurement/zzgu;
.super Landroid/database/ContentObserver;
.source "com.google.android.gms:play-services-measurement-impl@@22.0.0"


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/measurement/zzgs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgs;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zza:Lcom/google/android/gms/internal/measurement/zzgs;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgu;->zza:Lcom/google/android/gms/internal/measurement/zzgs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgs;->zzd()V

    return-void
.end method
