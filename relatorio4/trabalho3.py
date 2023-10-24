from collections import deque

class Processo:
    def __init__(self, nome, tempo_execucao):
        self.nome = nome
        self.tempo_execucao = tempo_execucao

class FilaDePronto:
    def __init__(self):
        self.processos = deque()

    def adicionar_processo(self, processo):
        self.processos.append(processo)

    # Executa o processo atual por um quantum de tempo
    def executar_rr(self, quantum):
        if not self.processos:
            print("A fila de pronto está vazia.")
            return

        # Pega o primeiro processo da fila
        processo_atual = self.processos.popleft()
        print(f"Executando {processo_atual.nome} por {quantum} unidades de tempo.")
        
        # Se o processo ainda não foi concluído, adiciona de volta à fila
        if processo_atual.tempo_execucao > quantum:
            processo_atual.tempo_execucao -= quantum
            self.processos.append(processo_atual) 
            print(f"{processo_atual.nome} ainda não concluído. Adicionado de volta à fila.")
        else:
            print(f"{processo_atual.nome} concluído.")
            processo_atual.tempo_execucao = 0

        self.processos = deque([p for p in self.processos if p.tempo_execucao > 0])

def main():
    fila_pronto = FilaDePronto()

    # Adicionando processos à fila de pronto
    fila_pronto.adicionar_processo(Processo("P1", 10))
    fila_pronto.adicionar_processo(Processo("P2", 5))
    fila_pronto.adicionar_processo(Processo("P3", 8))

    quantum = 3

    # Executando processos
    print("Iniciando simulação:")
    while fila_pronto.processos:
        fila_pronto.executar_rr(quantum)

    print("Todos os processos foram concluídos.")

if __name__ == "__main__":
    main()
