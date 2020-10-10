.class public Lcom/floatingtunes/youtubeplayer/topmusic/data/DataModule;
.super Ljava/lang/Object;
.source "DataModule.java"


# static fields
.field private static sTopCountry:Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;


# direct methods
.method public static getTopCountry()Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;
    .locals 1

    .line 23
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/data/DataModule;->sTopCountry:Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    return-object v0
.end method

.method public static setTopCountry(Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;)V
    .locals 0

    .line 27
    sput-object p0, Lcom/floatingtunes/youtubeplayer/topmusic/data/DataModule;->sTopCountry:Lcom/floatingtunes/youtubeplayer/topmusic/module/TopCountry;

    return-void
.end method
