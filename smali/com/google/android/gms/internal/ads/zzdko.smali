.class final Lcom/google/android/gms/internal/ads/zzdko;
.super Lcom/google/android/gms/internal/ads/zzdik;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdik<",
        "Lcom/google/android/gms/internal/ads/zzdio;",
        "Lcom/google/android/gms/internal/ads/zzdky;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdik;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzak(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdky;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdod;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdky;->zzass()Lcom/google/android/gms/internal/ads/zzdqk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqk;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdky;->zzast()Lcom/google/android/gms/internal/ads/zzdlc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlc;->zzasx()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdod;-><init>([BI)V

    return-object v0
.end method
