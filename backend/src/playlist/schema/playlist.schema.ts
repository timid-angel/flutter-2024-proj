import { Prop, Schema, SchemaFactory } from "@nestjs/mongoose";
import { Document } from "mongoose";

@Schema()

export class Playlist extends Document {
    @Prop()
    name: string

    @Prop()
    owner: string

    @Prop({ default: [] })
    songs: Array<String>
}

export const PlaylistSchema = SchemaFactory.createForClass(Playlist)