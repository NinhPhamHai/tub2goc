.class public final enum Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;
.super Ljava/lang/Enum;
.source "ItagItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItagType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

.field public static final enum AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

.field public static final enum VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

.field public static final enum VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 105
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const/4 v1, 0x0

    const-string v2, "AUDIO"

    invoke-direct {v0, v2, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 106
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const/4 v2, 0x1

    const-string v3, "VIDEO"

    invoke-direct {v0, v3, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 107
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const/4 v3, 0x2

    const-string v4, "VIDEO_ONLY"

    invoke-direct {v0, v4, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    const/4 v0, 0x3

    .line 104
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    aput-object v4, v0, v1

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->$VALUES:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;
    .locals 1

    .line 104
    const-class v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;
    .locals 1

    .line 104
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->$VALUES:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    return-object v0
.end method
