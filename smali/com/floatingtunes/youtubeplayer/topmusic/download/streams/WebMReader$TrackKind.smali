.class public final enum Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;
.super Ljava/lang/Enum;
.source "WebMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

.field public static final enum Audio:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

.field public static final enum Other:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

.field public static final enum Video:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    const/4 v1, 0x0

    const-string v2, "Audio"

    invoke-direct {v0, v2, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;->Audio:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    const/4 v2, 0x1

    const-string v3, "Video"

    invoke-direct {v0, v3, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;->Video:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    const/4 v3, 0x2

    const-string v4, "Other"

    invoke-direct {v0, v4, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;->Other:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    const/4 v0, 0x3

    .line 47
    new-array v0, v0, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    sget-object v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;->Audio:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    aput-object v4, v0, v1

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;->Video:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;->Other:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    aput-object v1, v0, v3

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;->$VALUES:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;
    .locals 1

    .line 47
    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    return-object p0
.end method

.method public static values()[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;
    .locals 1

    .line 47
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;->$VALUES:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    invoke-virtual {v0}, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    return-object v0
.end method
