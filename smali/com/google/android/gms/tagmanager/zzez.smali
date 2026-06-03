.class final Lcom/google/android/gms/tagmanager/zzez;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzfe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzfe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzez;->zza:Lcom/google/android/gms/tagmanager/zzfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzez;->zza:Lcom/google/android/gms/tagmanager/zzfe;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfe;->zze(Lcom/google/android/gms/tagmanager/zzfe;)Lcom/google/android/gms/tagmanager/zzcc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzcc;->zza()V

    return-void
.end method
