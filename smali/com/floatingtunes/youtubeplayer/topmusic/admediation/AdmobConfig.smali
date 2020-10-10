.class public Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobConfig;
.super Ljava/lang/Object;
.source "AdmobConfig.java"


# static fields
.field public static final AD_INTERSTITIAL:Ljava/lang/String;

.field public static final AD_NATIVE_RADIO:Ljava/lang/String;

.field public static final AD_NATIVE_SPLASH:Ljava/lang/String;

.field public static IS_DEBUG:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobConfig;->IS_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ca-app-pub-3940256099942544/1033173712"

    goto :goto_0

    :cond_0
    const-string v0, "ca-app-pub-5456881337868996/3560186501"

    :goto_0
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobConfig;->AD_INTERSTITIAL:Ljava/lang/String;

    .line 24
    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobConfig;->IS_DEBUG:Z

    const-string v1, "ca-app-pub-3940256099942544/2247696110"

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    const-string v0, "ca-app-pub-5456881337868996/4611567819"

    :goto_1
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobConfig;->AD_NATIVE_SPLASH:Ljava/lang/String;

    .line 27
    sget-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobConfig;->IS_DEBUG:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "ca-app-pub-5456881337868996/7983533669"

    :goto_2
    sput-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobConfig;->AD_NATIVE_RADIO:Ljava/lang/String;

    return-void
.end method
