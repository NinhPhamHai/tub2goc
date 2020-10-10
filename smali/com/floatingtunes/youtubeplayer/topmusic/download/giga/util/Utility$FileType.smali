.class public final enum Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;
.super Ljava/lang/Enum;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

.field public static final enum MUSIC:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

.field public static final enum SUBTITLE:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

.field public static final enum UNKNOWN:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

.field public static final enum VIDEO:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    const/4 v1, 0x0

    const-string v2, "VIDEO"

    invoke-direct {v0, v2, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;->VIDEO:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    .line 36
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    const/4 v2, 0x1

    const-string v3, "MUSIC"

    invoke-direct {v0, v3, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;->MUSIC:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    .line 37
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    const/4 v3, 0x2

    const-string v4, "SUBTITLE"

    invoke-direct {v0, v4, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;->SUBTITLE:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    .line 38
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;->UNKNOWN:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    const/4 v0, 0x4

    .line 34
    new-array v0, v0, [Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    sget-object v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;->VIDEO:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;->MUSIC:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;->SUBTITLE:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;->UNKNOWN:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;->$VALUES:[Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;
    .locals 1

    .line 34
    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    return-object p0
.end method

.method public static values()[Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;
    .locals 1

    .line 34
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;->$VALUES:[Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    invoke-virtual {v0}, [Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility$FileType;

    return-object v0
.end method
