.class final Lcom/google/android/gms/tagmanager/zzba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/tagmanager/zzbd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzbd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzba;->zzb:Lcom/google/android/gms/tagmanager/zzbd;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzba;->zza:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzba;->zzb:Lcom/google/android/gms/tagmanager/zzbd;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzba;->zza:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzbd;->zzg(Lcom/google/android/gms/tagmanager/zzbd;Ljava/lang/String;)V

    return-void
.end method
