makeblastdb -in mystery_transcripts.fasta -dbtype nucl -out mystery_transcripts_database.nucl
makeblastdb -in mystery_proteins.fasta -dbtype prot -out mystery_proteins_database.prot 
blastn -query mystery_nucleotide_query.fasta -task megablast -db mystery_transcripts_database.nucl -out blast_results.txt -evalue 1e-3 -max_hsps 5 -outfmt 7
T010027234997
awk '$3 >= 90 {print $2}' blast_results.txt >> most_similar.txt
blastp -query mystery_protein_query.fasta -db mystery_proteins_database.prot -out blast_results_1.txt -evalue 1e-5 -max_hsps 15 -outfmt 7
P010027090796
Coffea arabica
jasminoides
Gardenia 