// A nested file: open the "nested" folder preview, then hover this file inside it.

export interface Player {
  id: number;
  name: string;
  level: number;
}

export function topPlayers(players: Player[], count = 3): Player[] {
  return [...players].sort((a, b) => b.level - a.level).slice(0, count);
}
