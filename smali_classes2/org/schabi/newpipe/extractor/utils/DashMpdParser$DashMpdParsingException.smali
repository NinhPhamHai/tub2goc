.class public Lorg/schabi/newpipe/extractor/utils/DashMpdParser$DashMpdParsingException;
.super Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
.source "DashMpdParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/utils/DashMpdParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DashMpdParsingException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
