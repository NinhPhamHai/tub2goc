.class public final enum Lcom/google/android/gms/internal/ads/zzdbh;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdbh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzgoy:Lcom/google/android/gms/internal/ads/zzdbh;

.field public static final enum zzgoz:Lcom/google/android/gms/internal/ads/zzdbh;

.field public static final enum zzgpa:Lcom/google/android/gms/internal/ads/zzdbh;

.field private static final synthetic zzgpb:[Lcom/google/android/gms/internal/ads/zzdbh;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbh;

    const/4 v1, 0x0

    const-string v2, "Rewarded"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdbh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbh;->zzgoy:Lcom/google/android/gms/internal/ads/zzdbh;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbh;

    const/4 v2, 0x1

    const-string v3, "Interstitial"

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbh;->zzgoz:Lcom/google/android/gms/internal/ads/zzdbh;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbh;

    const/4 v3, 0x2

    const-string v4, "AppOpen"

    invoke-direct {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzdbh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbh;->zzgpa:Lcom/google/android/gms/internal/ads/zzdbh;

    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdbh;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdbh;->zzgoy:Lcom/google/android/gms/internal/ads/zzdbh;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdbh;->zzgoz:Lcom/google/android/gms/internal/ads/zzdbh;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdbh;->zzgpa:Lcom/google/android/gms/internal/ads/zzdbh;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbh;->zzgpb:[Lcom/google/android/gms/internal/ads/zzdbh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdbh;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdbh;->zzgpb:[Lcom/google/android/gms/internal/ads/zzdbh;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdbh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdbh;

    return-object v0
.end method
